.class Lcom/facebook/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/LoginActivity;


# direct methods
.method constructor <init>(Lcom/facebook/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/LoginActivity$2;->this$0:Lcom/facebook/LoginActivity;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackgroundProcessingStarted()V
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/LoginActivity$2;->this$0:Lcom/facebook/LoginActivity;

    iget-object v1, p0, Lcom/facebook/LoginActivity$2;->this$0:Lcom/facebook/LoginActivity;

    #getter for: Lcom/facebook/LoginActivity;->mResContainer:Lcom/facebook/ResContainer;
    invoke-static {v1}, Lcom/facebook/LoginActivity;->access$1(Lcom/facebook/LoginActivity;)Lcom/facebook/ResContainer;

    move-result-object v1

    sget-object v2, Lcom/facebook/ResContainer$ResType;->ID:Lcom/facebook/ResContainer$ResType;

    .line 103
    const-string v3, "com_facebook_login_activity_progress_bar"

    .line 102
    invoke-virtual {v1, v2, v3}, Lcom/facebook/ResContainer;->getResourceId(Lcom/facebook/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 104
    const/4 v1, 0x0

    .line 103
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    return-void
.end method

.method public onBackgroundProcessingStopped()V
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/facebook/LoginActivity$2;->this$0:Lcom/facebook/LoginActivity;

    .line 110
    iget-object v1, p0, Lcom/facebook/LoginActivity$2;->this$0:Lcom/facebook/LoginActivity;

    #getter for: Lcom/facebook/LoginActivity;->mResContainer:Lcom/facebook/ResContainer;
    invoke-static {v1}, Lcom/facebook/LoginActivity;->access$1(Lcom/facebook/LoginActivity;)Lcom/facebook/ResContainer;

    move-result-object v1

    sget-object v2, Lcom/facebook/ResContainer$ResType;->ID:Lcom/facebook/ResContainer$ResType;

    .line 111
    const-string v3, "com_facebook_login_activity_progress_bar"

    .line 110
    invoke-virtual {v1, v2, v3}, Lcom/facebook/ResContainer;->getResourceId(Lcom/facebook/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 109
    invoke-virtual {v0, v1}, Lcom/facebook/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 112
    const/16 v1, 0x8

    .line 111
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    return-void
.end method
