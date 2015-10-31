.class final Lcom/tencent/jsutil/ReportUtils$2;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$params:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/tencent/jsutil/ReportUtils$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/jsutil/ReportUtils$2;->val$params:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/tencent/jsutil/ReportUtils$2;->val$context:Landroid/content/Context;

    const-string v1, "http://cgi.qplus.com/report/report"

    const-string v2, "GET"

    iget-object v3, p0, Lcom/tencent/jsutil/ReportUtils$2;->val$params:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/sdkutil/HttpUtils;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/tencent/sdkutil/HttpUtils$Statistic;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
