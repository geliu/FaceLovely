.class Lcom/miantan/myoface/EditorActivity2$23;
.super Ljava/lang/Object;
.source "EditorActivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miantan/myoface/EditorActivity2;->InitOp(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miantan/myoface/EditorActivity2;


# direct methods
.method constructor <init>(Lcom/miantan/myoface/EditorActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miantan/myoface/EditorActivity2$23;->this$0:Lcom/miantan/myoface/EditorActivity2;

    .line 2030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2034
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity2$23;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/miantan/myoface/EditorActivity2;->access$29(Lcom/miantan/myoface/EditorActivity2;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2035
    return-void
.end method