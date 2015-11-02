.class Lcom/miantan/myoface/GuidePageActivity$MyPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "GuidePageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miantan/myoface/GuidePageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miantan/myoface/GuidePageActivity;


# direct methods
.method constructor <init>(Lcom/miantan/myoface/GuidePageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/miantan/myoface/GuidePageActivity$MyPagerAdapter;->this$0:Lcom/miantan/myoface/GuidePageActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 173
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Lcom/miantan/myoface/GuidePageActivity$MyPagerAdapter;->this$0:Lcom/miantan/myoface/GuidePageActivity;

    iget-object v0, v0, Lcom/miantan/myoface/GuidePageActivity;->listPage:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 174
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 186
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 187
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/miantan/myoface/GuidePageActivity$MyPagerAdapter;->this$0:Lcom/miantan/myoface/GuidePageActivity;

    iget-object v0, v0, Lcom/miantan/myoface/GuidePageActivity;->listPage:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 199
    const/4 v0, -0x2

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "position"

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .parameter "container"
    .parameter "position"

    .prologue
    .line 223
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Lcom/miantan/myoface/GuidePageActivity$MyPagerAdapter;->this$0:Lcom/miantan/myoface/GuidePageActivity;

    iget-object v0, v0, Lcom/miantan/myoface/GuidePageActivity;->listPage:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 224
    iget-object v0, p0, Lcom/miantan/myoface/GuidePageActivity$MyPagerAdapter;->this$0:Lcom/miantan/myoface/GuidePageActivity;

    iget-object v0, v0, Lcom/miantan/myoface/GuidePageActivity;->listPage:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 161
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
