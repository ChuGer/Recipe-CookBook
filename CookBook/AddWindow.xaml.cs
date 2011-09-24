using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Windows;
using System.Windows.Media;
using System.Xml;
using System.IO;


namespace CookBook
{
    public partial class AddWindow
    {
        private readonly ObservableCollection<Ingridient> _dataList = new ObservableCollection<Ingridient>();
        //private readonly List<string> _ingrList = new List<string>(new[]{"картофель","курица","творог","сметана",
        //                                                                         "яйцо","лук","чеснок","соль","сахар",
        //                                                                         "ягода","вода","уксус"});
        private readonly List<string> _weigthList = new List<string>(new[]{"грамм","килограмм","чайная ложка","столовая ложка",
                                                                                "стакан","миллилитр","литр","щепотка","штука","зубчик","банка"});

        public delegate void RecipeEventHandler(string fileName);
        public event RecipeEventHandler RecipeAddedSignal;


        public AddWindow(IEnumerable<string> typeList)
        {
            InitializeComponent();
            FillData();

            dataGrid1.ItemsSource = _dataList;
            _weigthList.Sort();
            dgCombo2.ItemsSource = _weigthList;
            recipeType.ItemsSource = typeList;
        }

        private void FillData()
        {
            _dataList.Add(new Ingridient { Ingr = "", Col = "", Ed = "" });
            _dataList.Add(new Ingridient { Ingr = "", Col = "", Ed = "" });

            //_dataList.Add(new Ingridient { Ingr = "лук", Col = "1", Ed = "штука" });
            //_dataList.Add(new Ingridient { Ingr = "сахар", Col = "2", Ed = "чайная ложка" });
            //_dataList.Add(new Ingridient { Ingr = "картофель", Col = "0.5", Ed = "килограмм" });
        }

        private bool CheckInput()
        {
            bool isCorrect = true;
            if (recipeName.Text.Length == 0)
            {
                isCorrect = false;
                recipeName.Background = Brushes.OrangeRed;
            }
            if (recipeType.Text.Length == 0)
            {
                isCorrect = false;
                recipeType.Background = Brushes.OrangeRed;
            }
            return isCorrect;
        }

        private void AddRecipeClick(object sender, RoutedEventArgs e)
        {
            if (!CheckInput())
            {
                MessageBox.Show("Некоторые поля не были заполнены", "Ошибка добавления рецепта", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            if (!Directory.Exists("Recipes"))
                Directory.CreateDirectory("Recipes");
            int fileNum = 1;
            string fileName;
            while (File.Exists(fileName = "Recipes/recipe" + fileNum + ".xml"))
                fileNum++;

            var writer = new XmlTextWriter(fileName, null);

            writer.WriteStartDocument();
            writer.WriteStartElement("ListOfRecipes");

            writer.WriteStartElement("RecipeData");
            writer.WriteAttributeString("Name", recipeName.Text);
            writer.WriteAttributeString("Type", recipeType.Text);
            writer.WriteAttributeString("Text", recipeText.Text);

            if (_dataList != null)
            {
                writer.WriteStartElement("Ingridients");
                foreach (Ingridient ingridient in _dataList)
                {
                    if (ingridient.Ingr.Length != 0)
                    {
                        writer.WriteStartElement("Ingridient");
                        writer.WriteAttributeString("Ingr", ingridient.Ingr);
                        writer.WriteAttributeString("Col", ingridient.Col);
                        writer.WriteAttributeString("Ed", ingridient.Ed);
                        writer.WriteEndElement();
                    }
                }
                writer.WriteEndElement();
            }

            writer.WriteEndElement();
            writer.WriteEndElement();
            writer.WriteEndDocument();
            writer.Close();
            Close();

            RecipeAddedSignal(fileName);
        }

        private void AddRowClick(object sender, RoutedEventArgs e)
        {
            _dataList.Add(new Ingridient());
        }

        private void RecipeNameTextChanged(object sender, System.Windows.Controls.TextChangedEventArgs e)
        {
            recipeName.Background = Brushes.White;
        }

        private void RecipeTypeGotFocus(object sender, RoutedEventArgs e)
        {
            recipeType.Background = Brushes.White;
        }
    }
}