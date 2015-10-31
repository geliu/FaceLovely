.class Lcom/miantan/myoface/ShareHelperActivity$13;
.super Ljava/lang/Object;
.source "ShareHelperActivity.java"

# interfaces
.implements Lcom/sina/weibo/sdk/api/share/IWeiboDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miantan/myoface/ShareHelperActivity;->downloadWeiboApp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miantan/myoface/ShareHelperActivity;


# direct methods
.method constructor <init>(Lcom/miantan/myoface/ShareHelperActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miantan/myoface/ShareHelperActivity$13;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    .line 1825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity$13;->this$0:Lcom/miantan/myoface/ShareHelperActivity;

    const-string v1, "\u53d6\u6d88\u5b89\u88c5"

    #calls: Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/miantan/myoface/ShareHelperActivity;->access$0(Lcom/miantan/myoface/ShareHelperActivity;Ljava/lang/String;)V

    .line 1829
    return-void
.end method
