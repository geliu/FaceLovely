.class Lcom/miantan/myoface/EditorActivity2$27;
.super Ljava/lang/Object;
.source "EditorActivity2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miantan/myoface/EditorActivity2;->animateToTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miantan/myoface/EditorActivity2;

.field private final synthetic val$tabView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miantan/myoface/EditorActivity2;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miantan/myoface/EditorActivity2$27;->this$0:Lcom/miantan/myoface/EditorActivity2;

    iput-object p2, p0, Lcom/miantan/myoface/EditorActivity2$27;->val$tabView:Landroid/view/View;

    .line 4213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4215
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity2$27;->val$tabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity2$27;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v2}, Lcom/miantan/myoface/EditorActivity2;->access$32(Lcom/miantan/myoface/EditorActivity2;)Landroid/widget/HorizontalScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2$27;->val$tabView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 4216
    .local v0, scrollPos:I
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity2$27;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v1}, Lcom/miantan/myoface/EditorActivity2;->access$32(Lcom/miantan/myoface/EditorActivity2;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 4217
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity2$27;->this$0:Lcom/miantan/myoface/EditorActivity2;

    const/4 v2, 0x0

    #setter for: Lcom/miantan/myoface/EditorActivity2;->mTabSelector:Ljava/lang/Runnable;
    invoke-static {v1, v2}, Lcom/miantan/myoface/EditorActivity2;->access$33(Lcom/miantan/myoface/EditorActivity2;Ljava/lang/Runnable;)V

    .line 4218
    return-void
.end method
