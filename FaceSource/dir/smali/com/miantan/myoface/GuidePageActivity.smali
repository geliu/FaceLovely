.class public Lcom/miantan/myoface/GuidePageActivity;
.super Landroid/app/Activity;
.source "GuidePageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miantan/myoface/GuidePageActivity$MyPageChangeListener;,
        Lcom/miantan/myoface/GuidePageActivity$MyPagerAdapter;
    }
.end annotation


# instance fields
.field listPage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mPageChangeListener:Lcom/miantan/myoface/GuidePageActivity$MyPageChangeListener;

.field mPagerAdapter:Lcom/miantan/myoface/GuidePageActivity$MyPagerAdapter;

.field mTextViewsPoint:[Landroid/widget/TextView;

.field mViewGroupMain:Landroid/view/ViewGroup;

.field mViewGroupPoint:Landroid/view/ViewGroup;

.field mViewPagerGuide:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const v9, 0x7f030005

    const/16 v8, 0x1e

    const/4 v7, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/miantan/myoface/GuidePageActivity;->requestWindowFeature(I)Z

    .line 52
    invoke-virtual {p0}, Lcom/miantan/myoface/GuidePageActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 54
    .local v2, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v2, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/miantan/myoface/GuidePageActivity;->mViewGroupMain:Landroid/view/ViewGroup;

    .line 58
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/miantan/myoface/GuidePageActivity;->listPage:Ljava/util/ArrayList;

    .line 60
    iget-object v5, p0, Lcom/miantan/myoface/GuidePageActivity;->listPage:Ljava/util/ArrayList;

    const v6, 0x7f03001d

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v5, p0, Lcom/miantan/myoface/GuidePageActivity;->listPage:Ljava/util/ArrayList;

    const v6, 0x7f03001e

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    const v5, 0x7f03001f

    invoke-virtual {v2, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 64
    .local v3, mViewGroupGuidepage3:Landroid/view/ViewGroup;
    const v5, 0x7f0b00cb

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 65
    .local v0, button:Landroid/widget/ImageView;
    new-instance v5, Lcom/miantan/myoface/GuidePageActivity$1;

    invoke-direct {v5, p0}, Lcom/miantan/myoface/GuidePageActivity$1;-><init>(Lcom/miantan/myoface/GuidePageActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v5, p0, Lcom/miantan/myoface/GuidePageActivity;->listPage:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {v2, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/miantan/myoface/GuidePageActivity;->mViewGroupMain:Landroid/view/ViewGroup;

    .line 109
    iget-object v5, p0, Lcom/miantan/myoface/GuidePageActivity;->listPage:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/widget/TextView;

    iput-object v5, p0, Lcom/miantan/myoface/GuidePageActivity;->mTextViewsPoint:[Landroid/widget/TextView;

    .line 110
    iget-object v5, p0, Lcom/miantan/myoface/GuidePageActivity;->mViewGroupMain:Landroid/view/ViewGroup;

    .line 111
    const v6, 0x7f0b002e

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 110
    iput-object v5, p0, Lcom/miantan/myoface/GuidePageActivity;->mViewGroupPoint:Landroid/view/ViewGroup;

    .line 112
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/miantan/myoface/GuidePageActivity;->listPage:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 127
    iget-object v5, p0, Lcom/miantan/myoface/GuidePageActivity;->mViewGroupMain:Landroid/view/ViewGroup;

    const v6, 0x7f0b002d

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lcom/miantan/myoface/GuidePageActivity;->mViewPagerGuide:Landroid/support/v4/view/ViewPager;

    .line 128
    new-instance v5, Lcom/miantan/myoface/GuidePageActivity$MyPagerAdapter;

    invoke-direct {v5, p0}, Lcom/miantan/myoface/GuidePageActivity$MyPagerAdapter;-><init>(Lcom/miantan/myoface/GuidePageActivity;)V

    iput-object v5, p0, Lcom/miantan/myoface/GuidePageActivity;->mPagerAdapter:Lcom/miantan/myoface/GuidePageActivity$MyPagerAdapter;

    .line 129
    iget-object v5, p0, Lcom/miantan/myoface/GuidePageActivity;->mViewPagerGuide:Landroid/support/v4/view/ViewPager;

    iget-object v6, p0, Lcom/miantan/myoface/GuidePageActivity;->mPagerAdapter:Lcom/miantan/myoface/GuidePageActivity$MyPagerAdapter;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 130
    new-instance v5, Lcom/miantan/myoface/GuidePageActivity$MyPageChangeListener;

    invoke-direct {v5, p0}, Lcom/miantan/myoface/GuidePageActivity$MyPageChangeListener;-><init>(Lcom/miantan/myoface/GuidePageActivity;)V

    iput-object v5, p0, Lcom/miantan/myoface/GuidePageActivity;->mPageChangeListener:Lcom/miantan/myoface/GuidePageActivity$MyPageChangeListener;

    .line 131
    iget-object v5, p0, Lcom/miantan/myoface/GuidePageActivity;->mViewPagerGuide:Landroid/support/v4/view/ViewPager;

    iget-object v6, p0, Lcom/miantan/myoface/GuidePageActivity;->mPageChangeListener:Lcom/miantan/myoface/GuidePageActivity$MyPageChangeListener;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 133
    iget-object v5, p0, Lcom/miantan/myoface/GuidePageActivity;->mViewGroupMain:Landroid/view/ViewGroup;

    invoke-virtual {p0, v5}, Lcom/miantan/myoface/GuidePageActivity;->setContentView(Landroid/view/View;)V

    .line 134
    return-void

    .line 113
    :cond_0
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 114
    .local v4, textView:Landroid/widget/TextView;
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/16 v6, 0x28

    const/16 v7, 0x14

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    invoke-virtual {v4, v8, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 116
    iget-object v5, p0, Lcom/miantan/myoface/GuidePageActivity;->mTextViewsPoint:[Landroid/widget/TextView;

    aput-object v4, v5, v1

    .line 117
    if-nez v1, :cond_1

    .line 118
    iget-object v5, p0, Lcom/miantan/myoface/GuidePageActivity;->mTextViewsPoint:[Landroid/widget/TextView;

    aget-object v5, v5, v1

    .line 119
    const v6, 0x7f020083

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 124
    :goto_1
    iget-object v5, p0, Lcom/miantan/myoface/GuidePageActivity;->mViewGroupPoint:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/miantan/myoface/GuidePageActivity;->mTextViewsPoint:[Landroid/widget/TextView;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_1
    iget-object v5, p0, Lcom/miantan/myoface/GuidePageActivity;->mTextViewsPoint:[Landroid/widget/TextView;

    aget-object v5, v5, v1

    .line 122
    const v6, 0x7f020084

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 147
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 148
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 141
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 142
    return-void
.end method
