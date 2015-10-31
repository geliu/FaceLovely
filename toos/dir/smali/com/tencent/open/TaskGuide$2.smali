.class Lcom/tencent/open/TaskGuide$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tencent/open/TaskGuide;


# direct methods
.method constructor <init>(Lcom/tencent/open/TaskGuide;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/tencent/open/TaskGuide$2;->this$0:Lcom/tencent/open/TaskGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 325
    iget-object v0, p0, Lcom/tencent/open/TaskGuide$2;->this$0:Lcom/tencent/open/TaskGuide;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide$2;->this$0:Lcom/tencent/open/TaskGuide;

    iget-object v2, p0, Lcom/tencent/open/TaskGuide$2;->this$0:Lcom/tencent/open/TaskGuide;

    #getter for: Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/tencent/open/TaskGuide;->access$800(Lcom/tencent/open/TaskGuide;)Landroid/content/Context;

    move-result-object v2

    #calls: Lcom/tencent/open/TaskGuide;->createNewContentView(Landroid/content/Context;)Landroid/view/ViewGroup;
    invoke-static {v1, v2}, Lcom/tencent/open/TaskGuide;->access$900(Lcom/tencent/open/TaskGuide;Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v1

    #setter for: Lcom/tencent/open/TaskGuide;->mContentView:Landroid/view/ViewGroup;
    invoke-static {v0, v1}, Lcom/tencent/open/TaskGuide;->access$102(Lcom/tencent/open/TaskGuide;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 328
    iget-object v0, p0, Lcom/tencent/open/TaskGuide$2;->this$0:Lcom/tencent/open/TaskGuide;

    iget-object v1, p0, Lcom/tencent/open/TaskGuide$2;->this$0:Lcom/tencent/open/TaskGuide;

    iget-object v2, p0, Lcom/tencent/open/TaskGuide$2;->this$0:Lcom/tencent/open/TaskGuide;

    #getter for: Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/tencent/open/TaskGuide;->access$1100(Lcom/tencent/open/TaskGuide;)Landroid/content/Context;

    move-result-object v2

    #calls: Lcom/tencent/open/TaskGuide;->genearteWinParams(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;
    invoke-static {v1, v2}, Lcom/tencent/open/TaskGuide;->access$1200(Lcom/tencent/open/TaskGuide;Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    #setter for: Lcom/tencent/open/TaskGuide;->mWinParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0, v1}, Lcom/tencent/open/TaskGuide;->access$1002(Lcom/tencent/open/TaskGuide;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    .line 331
    iget-object v0, p0, Lcom/tencent/open/TaskGuide$2;->this$0:Lcom/tencent/open/TaskGuide;

    #calls: Lcom/tencent/open/TaskGuide;->retWinParams()V
    invoke-static {v0}, Lcom/tencent/open/TaskGuide;->access$1300(Lcom/tencent/open/TaskGuide;)V

    .line 332
    iget-object v0, p0, Lcom/tencent/open/TaskGuide$2;->this$0:Lcom/tencent/open/TaskGuide;

    #getter for: Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/tencent/open/TaskGuide;->access$1400(Lcom/tencent/open/TaskGuide;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 334
    iget-object v1, p0, Lcom/tencent/open/TaskGuide$2;->this$0:Lcom/tencent/open/TaskGuide;

    #getter for: Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/tencent/open/TaskGuide;->access$1500(Lcom/tencent/open/TaskGuide;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/tencent/open/TaskGuide$2;->this$0:Lcom/tencent/open/TaskGuide;

    #getter for: Lcom/tencent/open/TaskGuide;->mAddedWindow:Z
    invoke-static {v1}, Lcom/tencent/open/TaskGuide;->access$000(Lcom/tencent/open/TaskGuide;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 339
    iget-object v1, p0, Lcom/tencent/open/TaskGuide$2;->this$0:Lcom/tencent/open/TaskGuide;

    #getter for: Lcom/tencent/open/TaskGuide;->mContentView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/tencent/open/TaskGuide;->access$100(Lcom/tencent/open/TaskGuide;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/open/TaskGuide$2;->this$0:Lcom/tencent/open/TaskGuide;

    #getter for: Lcom/tencent/open/TaskGuide;->mWinParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/tencent/open/TaskGuide;->access$1000(Lcom/tencent/open/TaskGuide;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/tencent/open/TaskGuide$2;->this$0:Lcom/tencent/open/TaskGuide;

    const/4 v1, 0x1

    #setter for: Lcom/tencent/open/TaskGuide;->mAddedWindow:Z
    invoke-static {v0, v1}, Lcom/tencent/open/TaskGuide;->access$002(Lcom/tencent/open/TaskGuide;Z)Z

    .line 343
    iget-object v0, p0, Lcom/tencent/open/TaskGuide$2;->this$0:Lcom/tencent/open/TaskGuide;

    const/4 v1, 0x2

    #calls: Lcom/tencent/open/TaskGuide;->updateContentView(I)V
    invoke-static {v0, v1}, Lcom/tencent/open/TaskGuide;->access$600(Lcom/tencent/open/TaskGuide;I)V

    .line 344
    iget-object v0, p0, Lcom/tencent/open/TaskGuide$2;->this$0:Lcom/tencent/open/TaskGuide;

    #calls: Lcom/tencent/open/TaskGuide;->expandWindow()V
    invoke-static {v0}, Lcom/tencent/open/TaskGuide;->access$1600(Lcom/tencent/open/TaskGuide;)V

    goto :goto_0
.end method
