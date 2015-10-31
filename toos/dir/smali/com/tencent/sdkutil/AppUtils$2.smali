.class Lcom/tencent/sdkutil/AppUtils$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/sdkutil/AppUtils;


# direct methods
.method constructor <init>(Lcom/tencent/sdkutil/AppUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 763
    iput-object p1, p0, Lcom/tencent/sdkutil/AppUtils$2;->this$0:Lcom/tencent/sdkutil/AppUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 768
    iget-object v0, p0, Lcom/tencent/sdkutil/AppUtils$2;->this$0:Lcom/tencent/sdkutil/AppUtils;

    #getter for: Lcom/tencent/sdkutil/AppUtils;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/tencent/sdkutil/AppUtils;->access$000(Lcom/tencent/sdkutil/AppUtils;)Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/tencent/jsutil/JsConfig;->mTencentFileProtocolPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/jsutil/JsBridge;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/jsutil/JsBridge;

    move-result-object v0

    const-string v1, "appUtils.onJsAlertCallBack"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/jsutil/JsBridge;->executeMethod(Ljava/lang/String;[Ljava/lang/String;)V

    .line 770
    return-void
.end method
