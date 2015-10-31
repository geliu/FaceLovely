.class Lcom/miantan/myoface/EditorActivity2$5;
.super Ljava/lang/Object;
.source "EditorActivity2.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


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
    iput-object p1, p0, Lcom/miantan/myoface/EditorActivity2$5;->this$0:Lcom/miantan/myoface/EditorActivity2;

    .line 1837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1897
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v3, 0x0

    .line 1884
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1886
    .local v0, matrix:Landroid/graphics/Matrix;
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity2$5;->this$0:Lcom/miantan/myoface/EditorActivity2;

    iget v2, v2, Lcom/miantan/myoface/EditorActivity2;->gCursorWidth:I

    mul-int/2addr v2, p1

    int-to-float v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1889
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity2$5;->this$0:Lcom/miantan/myoface/EditorActivity2;

    iget v2, v2, Lcom/miantan/myoface/EditorActivity2;->gCursorWidth:I

    int-to-float v2, v2

    mul-float v1, v2, p2

    .line 1891
    .local v1, t:F
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1893
    iget-object v2, p0, Lcom/miantan/myoface/EditorActivity2$5;->this$0:Lcom/miantan/myoface/EditorActivity2;

    iget-object v2, v2, Lcom/miantan/myoface/EditorActivity2;->gCursorImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1895
    return-void
.end method

.method public onPageSelected(I)V
    .locals 8
    .parameter "position"

    .prologue
    const v7, 0x7f0b00ab

    .line 1840
    move v2, p1

    .line 1841
    .local v2, newTypeIndex:I
    if-ltz v2, :cond_0

    iget-object v5, p0, Lcom/miantan/myoface/EditorActivity2$5;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v5}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/miantan/myoface/BasicDataApplication;->ALL_PART_TABPIC2:[Ljava/lang/Integer;

    array-length v5, v5

    if-lt v2, v5, :cond_1

    .line 1881
    :cond_0
    :goto_0
    return-void

    .line 1850
    :cond_1
    iget-object v5, p0, Lcom/miantan/myoface/EditorActivity2$5;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #calls: Lcom/miantan/myoface/EditorActivity2;->animateToTab(I)V
    invoke-static {v5, v2}, Lcom/miantan/myoface/EditorActivity2;->access$27(Lcom/miantan/myoface/EditorActivity2;I)V

    .line 1853
    iget-object v5, p0, Lcom/miantan/myoface/EditorActivity2$5;->this$0:Lcom/miantan/myoface/EditorActivity2;

    iget-object v5, v5, Lcom/miantan/myoface/EditorActivity2;->mTabWidget:Landroid/widget/TabWidget;

    iget-object v6, p0, Lcom/miantan/myoface/EditorActivity2$5;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v6}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 1856
    .local v4, tabIndicator_pre:Landroid/widget/RelativeLayout;
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1857
    .local v1, ivTab_pre:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/miantan/myoface/EditorActivity2$5;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v5}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/miantan/myoface/BasicDataApplication;->ALL_PART_TABPIC:[Ljava/lang/Integer;

    iget-object v6, p0, Lcom/miantan/myoface/EditorActivity2$5;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v6}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1860
    iget-object v5, p0, Lcom/miantan/myoface/EditorActivity2$5;->this$0:Lcom/miantan/myoface/EditorActivity2;

    iget-object v5, v5, Lcom/miantan/myoface/EditorActivity2;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v5, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 1864
    .local v3, tabIndicator:Landroid/widget/RelativeLayout;
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1865
    .local v0, ivTab:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/miantan/myoface/EditorActivity2$5;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v5}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/miantan/myoface/BasicDataApplication;->ALL_PART_TABPIC_DOWN:[Ljava/lang/Integer;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1869
    iget-object v5, p0, Lcom/miantan/myoface/EditorActivity2$5;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #setter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v5, v2}, Lcom/miantan/myoface/EditorActivity2;->access$28(Lcom/miantan/myoface/EditorActivity2;I)V

    .line 1871
    iget-object v5, p0, Lcom/miantan/myoface/EditorActivity2$5;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v5}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v5

    iget-object v6, p0, Lcom/miantan/myoface/EditorActivity2$5;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v6}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v6

    iget v6, v6, Lcom/miantan/myoface/BasicDataApplication;->INDEX_QIPAO:I

    if-eq v5, v6, :cond_0

    .line 1873
    iget-object v5, p0, Lcom/miantan/myoface/EditorActivity2$5;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->relativelayoutET:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/miantan/myoface/EditorActivity2;->access$23(Lcom/miantan/myoface/EditorActivity2;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 1876
    iget-object v5, p0, Lcom/miantan/myoface/EditorActivity2$5;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->relativelayoutET:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/miantan/myoface/EditorActivity2;->access$23(Lcom/miantan/myoface/EditorActivity2;)Landroid/widget/RelativeLayout;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1877
    iget-object v5, p0, Lcom/miantan/myoface/EditorActivity2$5;->this$0:Lcom/miantan/myoface/EditorActivity2;

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Lcom/miantan/myoface/EditorActivity2;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Lcom/miantan/myoface/EditorActivity2$5;->this$0:Lcom/miantan/myoface/EditorActivity2;

    invoke-virtual {v6}, Lcom/miantan/myoface/EditorActivity2;->getCurrentFocus()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_0
.end method
