.class Lcom/miantan/myoface/EditorActivity$7;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miantan/myoface/EditorActivity;->InitOp(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miantan/myoface/EditorActivity;


# direct methods
.method constructor <init>(Lcom/miantan/myoface/EditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miantan/myoface/EditorActivity$7;->this$0:Lcom/miantan/myoface/EditorActivity;

    .line 1353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity$7;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/miantan/myoface/EditorActivity;->access$21(Lcom/miantan/myoface/EditorActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1358
    return-void
.end method
