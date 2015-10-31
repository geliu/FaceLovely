.class Lcom/tencent/jsutil/ReportUtils$1;
.super Landroid/os/Handler;
.source "ProGuard"


# instance fields
.field final synthetic this$0:Lcom/tencent/jsutil/ReportUtils;


# direct methods
.method constructor <init>(Lcom/tencent/jsutil/ReportUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/tencent/jsutil/ReportUtils$1;->this$0:Lcom/tencent/jsutil/ReportUtils;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    .line 38
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 40
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/jsutil/ReportUtils$1;->this$0:Lcom/tencent/jsutil/ReportUtils;

    iget-object v0, v0, Lcom/tencent/jsutil/ReportUtils;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/jsutil/ReportUtils$1;->this$0:Lcom/tencent/jsutil/ReportUtils;

    iget-object v1, v1, Lcom/tencent/jsutil/ReportUtils;->mQqToken:Lcom/tencent/tauth/QQToken;

    invoke-static {v0, v1}, Lcom/tencent/mta/TencentStat;->c(Landroid/content/Context;Lcom/tencent/tauth/QQToken;)V

    goto :goto_0

    .line 43
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 44
    const-string v1, "eventId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    const-string v2, "array"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-object v2, p0, Lcom/tencent/jsutil/ReportUtils$1;->this$0:Lcom/tencent/jsutil/ReportUtils;

    iget-object v2, v2, Lcom/tencent/jsutil/ReportUtils;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/jsutil/ReportUtils$1;->this$0:Lcom/tencent/jsutil/ReportUtils;

    iget-object v3, v3, Lcom/tencent/jsutil/ReportUtils;->mQqToken:Lcom/tencent/tauth/QQToken;

    invoke-static {v2, v3, v1, v0}, Lcom/tencent/mta/TencentStat;->a(Landroid/content/Context;Lcom/tencent/tauth/QQToken;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 51
    const-string v1, "costTime"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 52
    const-string v3, "reportId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    const-string v4, "appId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v4, p0, Lcom/tencent/jsutil/ReportUtils$1;->this$0:Lcom/tencent/jsutil/ReportUtils;

    iget-object v4, v4, Lcom/tencent/jsutil/ReportUtils;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v1, v2, v0}, Lcom/tencent/jsutil/ReportUtils;->reportBernoulli(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
