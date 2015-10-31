.class Lcom/miantan/myoface/ShareHelperActivity$12$1;
.super Ljava/lang/Object;
.source "ShareHelperActivity.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miantan/myoface/ShareHelperActivity$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miantan/myoface/ShareHelperActivity$12;


# direct methods
.method constructor <init>(Lcom/miantan/myoface/ShareHelperActivity$12;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miantan/myoface/ShareHelperActivity$12$1;->this$1:Lcom/miantan/myoface/ShareHelperActivity$12;

    .line 1778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity$12$1;->this$1:Lcom/miantan/myoface/ShareHelperActivity$12;

    #getter for: Lcom/miantan/myoface/ShareHelperActivity$12;->this$0:Lcom/miantan/myoface/ShareHelperActivity;
    invoke-static {v0}, Lcom/miantan/myoface/ShareHelperActivity$12;->access$0(Lcom/miantan/myoface/ShareHelperActivity$12;)Lcom/miantan/myoface/ShareHelperActivity;

    move-result-object v0

    #getter for: Lcom/miantan/myoface/ShareHelperActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/miantan/myoface/ShareHelperActivity;->access$5(Lcom/miantan/myoface/ShareHelperActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    return-void
.end method

.method public onComplete(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity$12$1;->this$1:Lcom/miantan/myoface/ShareHelperActivity$12;

    #getter for: Lcom/miantan/myoface/ShareHelperActivity$12;->this$0:Lcom/miantan/myoface/ShareHelperActivity;
    invoke-static {v0}, Lcom/miantan/myoface/ShareHelperActivity$12;->access$0(Lcom/miantan/myoface/ShareHelperActivity$12;)Lcom/miantan/myoface/ShareHelperActivity;

    move-result-object v0

    #getter for: Lcom/miantan/myoface/ShareHelperActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/miantan/myoface/ShareHelperActivity;->access$5(Lcom/miantan/myoface/ShareHelperActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onComplete"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    iget-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity$12$1;->this$1:Lcom/miantan/myoface/ShareHelperActivity$12;

    #getter for: Lcom/miantan/myoface/ShareHelperActivity$12;->this$0:Lcom/miantan/myoface/ShareHelperActivity;
    invoke-static {v0}, Lcom/miantan/myoface/ShareHelperActivity$12;->access$0(Lcom/miantan/myoface/ShareHelperActivity$12;)Lcom/miantan/myoface/ShareHelperActivity;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/miantan/myoface/ShareHelperActivity;->access$0(Lcom/miantan/myoface/ShareHelperActivity;Ljava/lang/String;)V

    .line 1785
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity$12$1;->this$1:Lcom/miantan/myoface/ShareHelperActivity$12;

    #getter for: Lcom/miantan/myoface/ShareHelperActivity$12;->this$0:Lcom/miantan/myoface/ShareHelperActivity;
    invoke-static {v0}, Lcom/miantan/myoface/ShareHelperActivity$12;->access$0(Lcom/miantan/myoface/ShareHelperActivity$12;)Lcom/miantan/myoface/ShareHelperActivity;

    move-result-object v0

    #getter for: Lcom/miantan/myoface/ShareHelperActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/miantan/myoface/ShareHelperActivity;->access$5(Lcom/miantan/myoface/ShareHelperActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    iget-object v0, p0, Lcom/miantan/myoface/ShareHelperActivity$12$1;->this$1:Lcom/miantan/myoface/ShareHelperActivity$12;

    #getter for: Lcom/miantan/myoface/ShareHelperActivity$12;->this$0:Lcom/miantan/myoface/ShareHelperActivity;
    invoke-static {v0}, Lcom/miantan/myoface/ShareHelperActivity$12;->access$0(Lcom/miantan/myoface/ShareHelperActivity$12;)Lcom/miantan/myoface/ShareHelperActivity;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    #calls: Lcom/miantan/myoface/ShareHelperActivity;->ShowToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/miantan/myoface/ShareHelperActivity;->access$0(Lcom/miantan/myoface/ShareHelperActivity;Ljava/lang/String;)V

    .line 1791
    return-void
.end method
