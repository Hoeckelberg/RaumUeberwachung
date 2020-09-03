using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace GUI
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void ButtonPopUp_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void ButtonOpenMenue_Click(object sender, RoutedEventArgs e)
        {
            ButtonOpenMenue.Visibility = Visibility.Collapsed;
            ButtonCloseMenue.Visibility = Visibility.Visible;      
            GitLabLink.Visibility = Visibility.Visible;
        }

        private void ButtonCloseMenue_Click(object sender, RoutedEventArgs e)
        {
            ButtonOpenMenue.Visibility = Visibility.Visible;
            ButtonCloseMenue.Visibility = Visibility.Collapsed;
            GitLabLink.Visibility = Visibility.Collapsed;
        }

      

        private void ButtonInfo_Click(object sender, RoutedEventArgs e)
        {
            Process.Start("explorer.exe", "http://google.com");
        }

        private void GitLabLink_Click(object sender, RoutedEventArgs e)
        {
            Process.Start("explorer.exe", "https://gitlab.com/bktmpdr/itas/2020_ait/ait31/poa_2020_corona-berwachung");
        }
    }
}
