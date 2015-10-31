.class Lcom/miantan/myoface/EditorActivity2$MyPageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "EditorActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miantan/myoface/EditorActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPageAdapter"
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miantan/myoface/EditorActivity2;


# direct methods
.method private constructor <init>(Lcom/miantan/myoface/EditorActivity2;)V
    .locals 1
    .parameter

    .prologue
    .line 3862
    iput-object p1, p0, Lcom/miantan/myoface/EditorActivity2$MyPageAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 3863
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miantan/myoface/EditorActivity2$MyPageAdapter;->list:Ljava/util/List;

    .line 3864
    return-void
.end method

.method synthetic constructor <init>(Lcom/miantan/myoface/EditorActivity2;Lcom/miantan/myoface/EditorActivity2$MyPageAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3862
    invoke-direct {p0, p1}, Lcom/miantan/myoface/EditorActivity2$MyPageAdapter;-><init>(Lcom/miantan/myoface/EditorActivity2;)V

    return-void
.end method

.method private constructor <init>(Lcom/miantan/myoface/EditorActivity2;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3866
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    iput-object p1, p0, Lcom/miantan/myoface/EditorActivity2$MyPageAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 3867
    iput-object p2, p0, Lcom/miantan/myoface/EditorActivity2$MyPageAdapter;->list:Ljava/util/List;

    .line 3868
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 2
    .parameter "view"
    .parameter "position"
    .parameter "arg2"

    .prologue
    .line 3877
    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 3878
    .local v0, pViewPager:Landroid/support/v4/view/ViewPager;
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity2$MyPageAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 3879
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 3883
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 3887
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity2$MyPageAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 3917
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .parameter "view"
    .parameter "position"

    .prologue
    .line 3892
    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 3893
    .local v0, pViewPager:Landroid/support/v4/view/ViewPager;
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity2$MyPageAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 3894
    iget-object v1, p0, Lcom/miantan/myoface/EditorActivity2$MyPageAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 3899
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 3904
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 3908
    const/4 v0, 0x0

    return-object v0
.end method

.method public setViewList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3872
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    iput-object p1, p0, Lcom/miantan/myoface/EditorActivity2$MyPageAdapter;->list:Ljava/util/List;

    .line 3873
    return-void
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 3913
    return-void
.end method
