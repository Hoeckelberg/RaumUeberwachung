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
using System.Windows.Threading;
using System.Net;

namespace GUI
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        string Uri = "ftp://192.168.2.111/Dokumente/POA_Moritz_Marvin/Oversee/data.dat";

        public MainWindow()
        {
            string count;
            WebClient request = new WebClient();
            request.Credentials = new NetworkCredential("pi", "2447121201M");


            InitializeComponent();
            DispatcherTimer timer = new DispatcherTimer(new TimeSpan(0, 0, 1), DispatcherPriority.Normal, delegate
            {
                try
                {
                    byte[] newFileData = request.DownloadData(Uri);
                    count = System.Text.Encoding.UTF8.GetString(newFileData);
                }
                catch (Exception e)
                {
                    MessageBox.Show(e.ToString());
                    throw;
                }
                L1.Content = count;
            }, Dispatcher);
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
