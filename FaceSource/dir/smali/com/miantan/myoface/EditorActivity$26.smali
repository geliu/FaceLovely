.class Lcom/miantan/myoface/EditorActivity$26;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miantan/myoface/EditorActivity;->animateToTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miantan/myoface/EditorActivity;

.field private final synthetic val$tabView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miantan/myoface/EditorActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miantan/myoface/EditorActivity$26;->this$0:Lcom/miantan/myoface/EditorActivity;

    iput-object p2, p0, Lcom/miantan/myoface/EditorActivity$26;->val$tabView:Landroid/view/View;

    .line 3343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3345
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity$26;->val$tabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity$26;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v2}, Lcom/miantan/myoface/EditorActivity;->access$23(Lcom/miantan/myoface/EditorActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity$26;->val$tabView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 3346
    .local v0, scrollPos:I
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity$26;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v1}, Lcom/miantan/myoface/EditorActivity;->access$23(Lcom/miantan/myoface/EditorActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 3347
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity$26;->this$0:Lcom/miantan/myoface/EditorActivity;

    const/4 v2, 0x0

    #setter for: Lcom/miantan/myoface/EditorActivity;->mTabSelector:Ljava/lang/Runnable;
    invoke-static {v1, v2}, Lcom/miantan/myoface/EditorActivity;->access$24(Lcom/miantan/myoface/EditorActivity;Ljava/lang/Runnable;)V

    .line 3348
    return-void
.end method
