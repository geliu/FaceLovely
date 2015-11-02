.class Lcom/miantan/myoface/GuidePageActivity$MyPageChangeListener;
.super Ljava/lang/Object;
.source "GuidePageActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miantan/myoface/GuidePageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miantan/myoface/GuidePageActivity;


# direct methods
.method constructor <init>(Lcom/miantan/myoface/GuidePageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/miantan/myoface/GuidePageActivity$MyPageChangeListener;->this$0:Lcom/miantan/myoface/GuidePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 233
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 238
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 250
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/miantan/myoface/GuidePageActivity$MyPageChangeListener;->this$0:Lcom/miantan/myoface/GuidePageActivity;

    iget-object v1, v1, Lcom/miantan/myoface/GuidePageActivity;->mViewGroupPoint:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/miantan/myoface/GuidePageActivity$MyPageChangeListener;->this$0:Lcom/miantan/myoface/GuidePageActivity;

    iget-object v1, v1, Lcom/miantan/myoface/GuidePageActivity;->mViewGroupPoint:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    .line 261
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/miantan/myoface/GuidePageActivity$MyPageChangeListener;->this$0:Lcom/miantan/myoface/GuidePageActivity;

    iget-object v1, v1, Lcom/miantan/myoface/GuidePageActivity;->mViewGroupPoint:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 267
    :cond_0
    return-void

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/miantan/myoface/GuidePageActivity$MyPageChangeListener;->this$0:Lcom/miantan/myoface/GuidePageActivity;

    iget-object v1, v1, Lcom/miantan/myoface/GuidePageActivity;->mViewGroupPoint:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 253
    const v2, 0x7f020083

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 254
    if-eq p1, v0, :cond_2

    .line 255
    iget-object v1, p0, Lcom/miantan/myoface/GuidePageActivity$MyPageChangeListener;->this$0:Lcom/miantan/myoface/GuidePageActivity;

    iget-object v1, v1, Lcom/miantan/myoface/GuidePageActivity;->mViewGroupPoint:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 256
    const v2, 0x7f020084

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 250
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_3
    iget-object v1, p0, Lcom/miantan/myoface/GuidePageActivity$MyPageChangeListener;->this$0:Lcom/miantan/myoface/GuidePageActivity;

    iget-object v1, v1, Lcom/miantan/myoface/GuidePageActivity;->mViewGroupPoint:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f020085

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
