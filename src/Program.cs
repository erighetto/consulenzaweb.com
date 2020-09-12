using System.Threading.Tasks;
using Statiq.App;
using Statiq.Common;
using Statiq.Core;
using Statiq.Web;

namespace ConsulenzaWeb
{
    class Program
    {
        public static async Task<int> Main(string[] args) =>
            await Bootstrapper
            .Factory
            .CreateWeb(args)
            .RunAsync();
    }
}
