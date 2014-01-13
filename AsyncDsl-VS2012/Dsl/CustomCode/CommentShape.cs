//
//CommentShape Dash fix, as per 12th Noc 2009 answer
//
namespace DmitriNesteruk.AsyncDsl
{
    partial class CommentShape
    {
        private static System.Collections.ArrayList customOutlineDashPattern;
        protected static System.Collections.ArrayList CustomOutlineDashPattern
        {
            get
            {
                if (customOutlineDashPattern == null)
                    customOutlineDashPattern = new System.Collections.ArrayList(new float[] { 4.0F, 2.0F, 1.0F, 3.0F });
                return customOutlineDashPattern;
            }
        }
    }
}
