   M S B A M L   `   `   `  ����G  CPixelLab.Wpf, Version=0.0.0.0, Culture=neutral, PublicKeyToken=nullA0clr-namespace:PixelLab.Wpf;assembly=PixelLab.WpfPixelLab.Wpf  5   	    CookBook   CookBook.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @lib0clr-namespace:PixelLab.Wpf;assembly=PixelLab.Wpf     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   �   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     6�     � Title$!  Книга рецептов��6	    � Icon$0 */CookBook;component/Images/cake_slice1.ico��6     � WindowStartupLocation$ CenterScreen=�6R   $	��514��6  $	��691��6  ��5      �� 5   
    �� EndPoint$ 1,0.5&�6    �� 
StartPoint$ 0,0.5&�6/   .��5	      �  � Color$ Orange��6    � Offset$ 0.228Q�6*   � 5
      $ LemonChiffon��6   $ 1Q�60   5      .��5      �� .+�5   
   �� -   5        $��button1��5   @   $#��Добавить рецепт��6   $��
562,-1,4,0q�6,   $��Normal$�6f   $��Normal"�6y   $��14(�6�   $��32��6�   $	��Top=�6�   
�������$	��140��6�    �� Left$ 79��6�   
 �� Top$ 0��6�   	 � LayoutTransform	 5      �� 5      
 �� Angle$
 90Q�6"   ��5      �� 5      $ 0.5,1&�6&   $ 0.5,0&�67   .��5      � $ Cornsilk��6#   $ 0Q�64   � 5      $
 Teal��6#   $ 1Q�60   5      5      �� 5   
   -   5        $��stack��5      $��0,166,208,53q�6"   $	��390��68   $	��390��6G   $	��418��6S   $ 0��6`   $
 -166��6p   .+�5      �� -   5        $��
textBlock1��5   $   $��70��6   $��20,100,20,10q�66   $}��wВыберите рецепт из списка справа и выполните двойной щелчок мыши��6L   $	��236��6�   $
��Wrap=�6�   
�������$
��None=�6�   $��SemiCondensed&�6�   $��16(�6�   $
��Bold"�6  5      R� 5   
   -   5        $��	treeView1��5   N   $	��438��6   $
��Left=�6    $��	389,0,0,0q�6;   $	��Top=�6_   $	��252��6w   
�������
�������6�   9� 5   
   -   5        $��	expander1��5   7   $��Поиск рецепта��6   $��52��6*   $	��Top=�6H   $	��642��6`   $��Normal"�6l   $��Italic$�6�   $ -1��6�   $	 444��6�   .��5       � $��30��6    � ColumnDefinitions 5!      �� 5"      $��* �6'   �� 5#      $��* �6'   �� 5$      $��* �6'   .+�5&         PixelLab.Wpf.InfoTextBox  -   5        $��recipeNameSearch��5&   T      TextBoxInfo$* $Введите имя рецепта��6"   $��0��6D   6l     5'      -   5        $��recipeTypeSearch��5'   T   $* $Введите тип рецепта��6"   $��1��6D   6l     5(      -   5        $��recipeIngrSearch��5(   S   $) #Введите ингридиент��6"   $��2��6C   6k   5)      5*      �� 5+   
   -	   5        $��delRecipeButton��5+   6   $!��Удалить рецепт��6   $��23��6*   $	��120��6M   $ 0��6Y   $	 415��6i   ���	#71FF4500
�������6�   5,      5.      