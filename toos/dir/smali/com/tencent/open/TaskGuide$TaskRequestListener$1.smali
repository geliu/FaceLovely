.class Lcom/tencent/open/TaskGuide$TaskRequestListener$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/tencent/open/TaskGuide$TaskRequestListener;


# direct methods
.method constructor <init>(Lcom/tencent/open/TaskGuide$TaskRequestListener;)V
    .locals 0
    .parameter

    .prologue
    .line 844
    iput-object p1, p0, Lcom/tencent/open/TaskGuide$TaskRequestListener$1;->this$1:Lcom/tencent/open/TaskGuide$TaskRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 850
    iget-object v0, p0, Lcom/tencent/open/TaskGuide$TaskRequestListener$1;->this$1:Lcom/tencent/open/TaskGuide$TaskRequestListener;

    iget-object v0, v0, Lcom/tencent/open/TaskGuide$TaskRequestListener;->this$0:Lcom/tencent/open/TaskGuide;

    const/4 v1, 0x2

    sget-object v2, Lcom/tencent/open/TaskGuide$TaskState;->INIT:Lcom/tencent/open/TaskGuide$TaskState;

    #calls: Lcom/tencent/open/TaskGuide;->moveToState(ILcom/tencent/open/TaskGuide$TaskState;)V
    invoke-static {v0, v1, v2}, Lcom/tencent/open/TaskGuide;->access$3600(Lcom/tencent/open/TaskGuide;ILcom/tencent/open/TaskGuide$TaskState;)V

    .line 851
    return-void
.end method
