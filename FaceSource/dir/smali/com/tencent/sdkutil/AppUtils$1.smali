.class Lcom/tencent/sdkutil/AppUtils$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tencent/sdkutil/AppUtils;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$listener:Lcom/tencent/tauth/IUiListener;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/sdkutil/AppUtils;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 681
    iput-object p1, p0, Lcom/tencent/sdkutil/AppUtils$1;->this$0:Lcom/tencent/sdkutil/AppUtils;

    iput-object p2, p0, Lcom/tencent/sdkutil/AppUtils$1;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/sdkutil/AppUtils$1;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/sdkutil/AppUtils$1;->val$listener:Lcom/tencent/tauth/IUiListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 685
    new-instance v0, Lcom/tencent/sdkutil/TDialog;

    iget-object v1, p0, Lcom/tencent/sdkutil/AppUtils$1;->this$0:Lcom/tencent/sdkutil/AppUtils;

    #getter for: Lcom/tencent/sdkutil/AppUtils;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/tencent/sdkutil/AppUtils;->access$000(Lcom/tencent/sdkutil/AppUtils;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/sdkutil/AppUtils$1;->val$action:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/sdkutil/AppUtils$1;->val$url:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/sdkutil/AppUtils$1;->val$listener:Lcom/tencent/tauth/IUiListener;

    iget-object v5, p0, Lcom/tencent/sdkutil/AppUtils$1;->this$0:Lcom/tencent/sdkutil/AppUtils;

    #getter for: Lcom/tencent/sdkutil/AppUtils;->mQQToken:Lcom/tencent/tauth/QQToken;
    invoke-static {v5}, Lcom/tencent/sdkutil/AppUtils;->access$100(Lcom/tencent/sdkutil/AppUtils;)Lcom/tencent/tauth/QQToken;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/sdkutil/TDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lcom/tencent/tauth/QQToken;)V

    invoke-virtual {v0}, Lcom/tencent/sdkutil/TDialog;->show()V

    .line 686
    return-void
.end method
