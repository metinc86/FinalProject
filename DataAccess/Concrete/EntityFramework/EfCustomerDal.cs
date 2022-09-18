using Core.DataAccess.EntityFramework;
using DataAccess.Abstract;
using Entities.Concrete;
using Entities.DTOs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Concrete.EntityFramework
{
    public class EfCustomerDal : EfEntityRepositoryBase<Customer, NorthwindContext>, ICustomerDal
    {
        public List<CustomerDetailDto> GetCustomerDetails()
        {
            using (NorthwindContext context = new NorthwindContext())
            {
                var result = from c in context.Customers
                             select new CustomerDetailDto
                             {
                                 CustomerId = c.CustomerId,
                                 CompanyName = c.CompanyName,
                             };
                return result.ToList();
            }
        }
    }        
}
