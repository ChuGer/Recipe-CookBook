// Type: PixelLab.Wpf.OrgTree
// Assembly: PixelLab.Wpf, Version=0.0.0.0, Culture=neutral
// Assembly location: C:\Users\Acer5740\Documents\Visual Studio 2010\Projects\CookBook\CookBook\PixelLab.Wpf.dll

using System.Windows;
using System.Windows.Controls;

namespace PixelLab.Wpf
{
    public class OrgTree : ItemsControl
    {
        public OrgTree();
        protected override DependencyObject GetContainerForItemOverride();
        protected override bool IsItemItsOwnContainerOverride(object item);
    }
}
