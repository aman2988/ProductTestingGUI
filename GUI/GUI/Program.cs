using GUI.CustomMiddlewares;
using GUI.Data.Models;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllersWithViews().AddNewtonsoftJson(options =>
options.SerializerSettings.ReferenceLoopHandling = Newtonsoft.Json.ReferenceLoopHandling.Ignore);
var productsConnectionstring = builder.Configuration.GetConnectionString("ProductDBConnection");
var logsConnectionstring = builder.Configuration.GetConnectionString("LogsDBConnection");
builder.Services.AddDbContext<ProductsContext>(options => options.UseMySQL(productsConnectionstring)); ;
builder.Services.AddDbContext<LogsContext>(options => options.UseMySQL(logsConnectionstring)); ;
var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}
app.UseMiddleware<ExceptionHandlingMiddleware>();
app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.Run();
