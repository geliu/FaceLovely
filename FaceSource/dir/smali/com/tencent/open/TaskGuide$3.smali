.class Lcom/tencent/open/TaskGuide$3;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tencent/open/TaskGuide;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/open/TaskGuide;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 906
    iput-object p1, p0, Lcom/tencent/open/TaskGuide$3;->this$0:Lcom/tencent/open/TaskGuide;

    iput-object p2, p0, Lcom/tencent/open/TaskGuide$3;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 911
    iget-object v0, p0, Lcom/tencent/open/TaskGuide$3;->this$0:Lcom/tencent/open/TaskGuide;

    #getter for: Lcom/tencent/open/TaskGuide;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/tencent/open/TaskGuide;->access$3700(Lcom/tencent/open/TaskGuide;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/open/TaskGuide$3;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 912
    return-void
.end method
