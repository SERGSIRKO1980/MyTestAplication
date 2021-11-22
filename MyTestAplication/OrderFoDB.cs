using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyTestAplication
{
    public class OrderFoDB
    {
         public string FirstName;

        public string SecondName;

        public string AdressOrder;

        public int WeightOrder;

        public string MessageUser;

        public string TypeOrder;

        public int CostValue;

        //======================= GET SET FirstName ==========
        public string GetFirstName()
        {
            return this.FirstName;
        }
        public void SetFirstName(string value)
        {
            this.FirstName = value;
        }
        //======================= GET SET SecondName ==========
        public string GetSecondName()
        {
            return this.SecondName;
        }
        public void SetSecondName(string value)
        {
            this.SecondName = value;
        }
        //======================= GET SET AdressOrder ==========
        public string GetAdressOrder()
        {
            return this.AdressOrder;
        }
        public void SetAdressOrder(string value)
        {
            this.AdressOrder = value;
        }
        //======================= GET SET WeightOrder ==========
        public int GetWeightOrder()
        {
            return this.WeightOrder;
        }
        public void SetWeightOrder(int value)
        {
            this.WeightOrder = value;
        }
        //======================= GET SET MessageUser ==========
        public string GetMessageUser()
        {
            return this.MessageUser;
        }
        public void SetMessageUser(string value)
        {
            this.MessageUser = value;
        }
        //======================= GET SET TypeOrder ==========
        public string GetTypeOrder() 
        {
            return this.TypeOrder;
        }
        public void SetTypeOrder(string value)
        {
            this.TypeOrder = value;
        }
        //======================= GET SET CostValue ==========
        public int GetCostValue()
        {
                    return this.CostValue;
        }
        public void SetCostValue(int value)
        {
             this.CostValue = value;
        }
    }
}