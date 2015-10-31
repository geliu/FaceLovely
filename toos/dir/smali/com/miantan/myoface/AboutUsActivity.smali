.class public Lcom/miantan/myoface/AboutUsActivity;
.super Landroid/app/Activity;
.source "AboutUsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private btnGetBack:Landroid/widget/Button;

.field private mMembersId:[Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const-string v0, "MYOFace"

    iput-object v0, p0, Lcom/miantan/myoface/AboutUsActivity;->LOG_TAG:Ljava/lang/String;

    .line 33
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const v2, 0x7f02008e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f02008f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f020094

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x7f020090

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x7f020091

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f020093

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f02008d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f02008a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f02008b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/miantan/myoface/AboutUsActivity;->mMembersId:[Ljava/lang/Integer;

    .line 28
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 99
    :pswitch_0
    invoke-virtual {p0}, Lcom/miantan/myoface/AboutUsActivity;->finish()V

    .line 100
    const v0, 0x7f040006

    const v1, 0x7f040009

    invoke-virtual {p0, v0, v1}, Lcom/miantan/myoface/AboutUsActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0003
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0, v5}, Lcom/miantan/myoface/AboutUsActivity;->requestWindowFeature(I)Z

    .line 44
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/miantan/myoface/AboutUsActivity;->setContentView(I)V

    .line 47
    const v1, 0x7f0b0003

    invoke-virtual {p0, v1}, Lcom/miantan/myoface/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/miantan/myoface/AboutUsActivity;->btnGetBack:Landroid/widget/Button;

    .line 49
    iget-object v1, p0, Lcom/miantan/myoface/AboutUsActivity;->btnGetBack:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v1, 0x7f0b0008

    invoke-virtual {p0, v1}, Lcom/miantan/myoface/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/GridView;

    .line 54
    .local v6, gridview:Landroid/widget/GridView;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v2, lstImageItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v1, p0, Lcom/miantan/myoface/AboutUsActivity;->mMembersId:[Ljava/lang/Integer;

    array-length v1, v1

    if-lt v7, v1, :cond_0

    .line 63
    new-instance v0, Landroid/widget/SimpleAdapter;

    .line 65
    const/high16 v3, 0x7f03

    .line 68
    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "ItemImage"

    aput-object v1, v4, v9

    .line 71
    new-array v5, v5, [I

    const/high16 v1, 0x7f0b

    aput v1, v5, v9

    move-object v1, p0

    .line 63
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 73
    .local v0, saImageItems:Landroid/widget/SimpleAdapter;
    invoke-virtual {v6, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v1}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 77
    new-instance v1, Lcom/miantan/myoface/AboutUsActivity$1;

    invoke-direct {v1, p0}, Lcom/miantan/myoface/AboutUsActivity$1;-><init>(Lcom/miantan/myoface/AboutUsActivity;)V

    invoke-virtual {v6, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 88
    const-string v1, "EnterAboutUsPage"

    invoke-static {p0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    return-void

    .line 58
    .end local v0           #saImageItems:Landroid/widget/SimpleAdapter;
    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 59
    .local v8, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ItemImage"

    iget-object v3, p0, Lcom/miantan/myoface/AboutUsActivity;->mMembersId:[Ljava/lang/Integer;

    aget-object v3, v3, v7

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 113
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 114
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 107
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 108
    return-void
.end method
