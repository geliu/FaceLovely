.class Lcom/tencent/open/TaskGuide$CollapseDelayRunnable;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tencent/open/TaskGuide;


# direct methods
.method private constructor <init>(Lcom/tencent/open/TaskGuide;)V
    .locals 0
    .parameter

    .prologue
    .line 570
    iput-object p1, p0, Lcom/tencent/open/TaskGuide$CollapseDelayRunnable;->this$0:Lcom/tencent/open/TaskGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/open/TaskGuide;Lcom/tencent/open/TaskGuide$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 570
    invoke-direct {p0, p1}, Lcom/tencent/open/TaskGuide$CollapseDelayRunnable;-><init>(Lcom/tencent/open/TaskGuide;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/tencent/open/TaskGuide$CollapseDelayRunnable;->this$0:Lcom/tencent/open/TaskGuide;

    #calls: Lcom/tencent/open/TaskGuide;->collapseWindow()V
    invoke-static {v0}, Lcom/tencent/open/TaskGuide;->access$2500(Lcom/tencent/open/TaskGuide;)V

    .line 576
    return-void
.end method
