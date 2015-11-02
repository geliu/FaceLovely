.class Lcom/miantan/myoface/EditorActivity2$6;
.super Ljava/lang/Object;
.source "EditorActivity2.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


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
    iput-object p1, p0, Lcom/miantan/myoface/EditorActivity2$6;->this$0:Lcom/miantan/myoface/EditorActivity2;

    .line 1903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "tabId"

    .prologue
    .line 1905
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1906
    .local v0, newTypeIndex:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity2$6;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v1}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/miantan/myoface/BasicDataApplication;->ALL_PART_TABPIC2:[Ljava/lang/Integer;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 1915
    :cond_0
    :goto_0
    return-void

    .line 1912
    :cond_1
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity2$6;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/miantan/myoface/EditorActivity2;->access$29(Lcom/miantan/myoface/EditorActivity2;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method
