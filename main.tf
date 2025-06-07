provider "aws" {
    region = "ap-northeast-1"
}

resource "aws_budgets_budget" "total" {
    name         = "sample_budgets"
    budget_type  = "COST"
    limit_amount = "5"
    limit_unit   = "USD"
    time_unit    = "MONTHLY"

    notification {
        comparison_operator        = "GREATER_THAN"
        threshold                  = 100
        threshold_type             = "PERCENTAGE"
        notification_type          = "FORECASTED"
        subscriber_sns_topic_arns = [aws_sns_topic.budget_alerts.arn]
    }
}

resource "aws_sns_topic" "budget_alerts"{
    name = "budget-alerts"
}
    
resource "aws_sns_topic_subscription" "email_subscription_yoshiyuki"{
    topic_arn = aws_sns_topic.budget_alerts.arn
    protocol = "email"
    endpoint = "yoshiyuki.sato0304@gmail.com"     
} 

