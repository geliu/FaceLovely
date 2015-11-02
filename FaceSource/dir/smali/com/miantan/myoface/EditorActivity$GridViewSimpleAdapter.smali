.class public Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;
.super Landroid/widget/BaseAdapter;
.source "EditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miantan/myoface/EditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridViewSimpleAdapter"
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mcontext:Landroid/content/Context;

.field final synthetic this$0:Lcom/miantan/myoface/EditorActivity;

.field typeindex:I


# direct methods
.method public constructor <init>(Lcom/miantan/myoface/EditorActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3157
    .local p3, showList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 3153
    const/4 v0, 0x0

    iput v0, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->typeindex:I

    .line 3158
    iput-object p2, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->mcontext:Landroid/content/Context;

    .line 3159
    iput-object p3, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->list:Ljava/util/List;

    .line 3160
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 3164
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 3169
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 3174
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 3185
    if-nez p2, :cond_0

    .line 3186
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->mcontext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030013

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 3187
    .local v2, localView:Landroid/view/View;
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    const/4 v7, -0x2

    iget-object v8, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity;

    iget-object v9, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->heightdp_griditem:I
    invoke-static {v9}, Lcom/miantan/myoface/EditorActivity;->access$10(Lcom/miantan/myoface/EditorActivity;)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v8, v9}, Lcom/miantan/myoface/EditorActivity;->dip2px(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v4, v7, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 3189
    .local v4, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3197
    .end local v4           #params:Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    iget v7, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->typeindex:I

    iget-object v8, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v8}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v8

    iget v8, v8, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAIRCOLOR:I

    if-ne v7, v8, :cond_4

    .line 3202
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v7}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v7

    iget-object v7, v7, Lcom/miantan/myoface/BasicDataApplication;->HAIRCOLOR_PIC_SHOW_VALUE:[Ljava/lang/String;

    aget-object v7, v7, p1

    const-string v8, "select"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3205
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v7}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v7

    iget-object v7, v7, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsColor:[[Ljava/lang/String;

    invoke-static {}, Lcom/miantan/myoface/EditorActivity;->access$4()I

    move-result v8

    aget-object v7, v7, v8

    iget v8, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->typeindex:I

    aget-object v1, v7, v8

    .line 3206
    .local v1, colorvalue:Ljava/lang/String;
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v7}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miantan/myoface/BasicDataApplication;->get_HAIRCOLOR_PIC_SHOW_POS()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3208
    const/high16 v7, 0x7f06

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3273
    .end local v1           #colorvalue:Ljava/lang/String;
    :goto_1
    iget v7, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->typeindex:I

    iget-object v8, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v8}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v8

    iget v8, v8, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAIRCOLOR:I

    if-ne v7, v8, :cond_a

    .line 3284
    const/high16 v7, 0x7f0b

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 3285
    .local v3, mItemImage:Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->list:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3330
    :goto_2
    return-object v2

    .line 3193
    .end local v2           #localView:Landroid/view/View;
    .end local v3           #mItemImage:Landroid/widget/ImageView;
    :cond_0
    move-object v2, p2

    .restart local v2       #localView:Landroid/view/View;
    goto :goto_0

    .line 3212
    .restart local v1       #colorvalue:Ljava/lang/String;
    :cond_1
    const v7, 0x7f060001

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 3217
    .end local v1           #colorvalue:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v7}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v7

    iget-object v7, v7, Lcom/miantan/myoface/BasicDataApplication;->HAIRCOLOR_PIC_SHOW_VALUE:[Ljava/lang/String;

    aget-object v7, v7, p1

    iget-object v8, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v8}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v8

    iget-object v8, v8, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsColor:[[Ljava/lang/String;

    invoke-static {}, Lcom/miantan/myoface/EditorActivity;->access$4()I

    move-result v9

    aget-object v8, v8, v9

    iget v9, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->typeindex:I

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3219
    const v7, 0x7f060001

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 3223
    :cond_3
    const/high16 v7, 0x7f06

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 3228
    :cond_4
    iget v7, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->typeindex:I

    iget-object v8, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v8}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v8

    iget v8, v8, Lcom/miantan/myoface/BasicDataApplication;->INDEX_SKINCOLOR:I

    if-ne v7, v8, :cond_8

    .line 3233
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v7}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v7

    iget-object v7, v7, Lcom/miantan/myoface/BasicDataApplication;->SKINCOLOR_PIC_SHOW_VALUE:[Ljava/lang/String;

    aget-object v7, v7, p1

    const-string v8, "select"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3236
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v7}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v7

    iget-object v7, v7, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsColor:[[Ljava/lang/String;

    invoke-static {}, Lcom/miantan/myoface/EditorActivity;->access$4()I

    move-result v8

    aget-object v7, v7, v8

    iget v8, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->typeindex:I

    aget-object v1, v7, v8

    .line 3237
    .restart local v1       #colorvalue:Ljava/lang/String;
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v7}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miantan/myoface/BasicDataApplication;->get_SKINCOLOR_PIC_SHOW_POS()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3239
    const/high16 v7, 0x7f06

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 3243
    :cond_5
    const v7, 0x7f060001

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 3248
    .end local v1           #colorvalue:Ljava/lang/String;
    :cond_6
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v7}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v7

    iget-object v7, v7, Lcom/miantan/myoface/BasicDataApplication;->SKINCOLOR_PIC_SHOW_VALUE:[Ljava/lang/String;

    aget-object v7, v7, p1

    iget-object v8, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v8}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v8

    iget-object v8, v8, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsColor:[[Ljava/lang/String;

    invoke-static {}, Lcom/miantan/myoface/EditorActivity;->access$4()I

    move-result v9

    aget-object v8, v8, v9

    iget v9, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->typeindex:I

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3250
    const v7, 0x7f060001

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 3254
    :cond_7
    const/high16 v7, 0x7f06

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 3260
    :cond_8
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;
    invoke-static {v7}, Lcom/miantan/myoface/EditorActivity;->access$11(Lcom/miantan/myoface/EditorActivity;)Ljava/util/List;

    move-result-object v7

    iget v8, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->typeindex:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v8}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v8

    iget-object v8, v8, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    invoke-static {}, Lcom/miantan/myoface/EditorActivity;->access$4()I

    move-result v9

    aget-object v8, v8, v9

    iget v9, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->typeindex:I

    aget v8, v8, v9

    if-ne v7, v8, :cond_9

    .line 3262
    const v7, 0x7f060001

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 3266
    :cond_9
    const/high16 v7, 0x7f06

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 3288
    :cond_a
    iget v7, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->typeindex:I

    iget-object v8, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v8}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v8

    iget v8, v8, Lcom/miantan/myoface/BasicDataApplication;->INDEX_SKINCOLOR:I

    if-ne v7, v8, :cond_b

    .line 3299
    const/high16 v7, 0x7f0b

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 3300
    .restart local v3       #mItemImage:Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->list:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 3305
    .end local v3           #mItemImage:Landroid/widget/ImageView;
    :cond_b
    const/high16 v7, 0x7f0b

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 3310
    .restart local v3       #mItemImage:Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->list:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3312
    .local v5, resId:I
    const/4 v0, 0x0

    .line 3313
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/miantan/myoface/BitmapCacheLru;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3314
    if-nez v0, :cond_c

    .line 3315
    new-instance v6, Lcom/miantan/myoface/EditorActivity$BitmapWorkerTask;

    iget-object v7, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity;

    invoke-direct {v6, v7, v3}, Lcom/miantan/myoface/EditorActivity$BitmapWorkerTask;-><init>(Lcom/miantan/myoface/EditorActivity;Landroid/widget/ImageView;)V

    .line 3316
    .local v6, task:Lcom/miantan/myoface/EditorActivity$BitmapWorkerTask;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Integer;

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Lcom/miantan/myoface/EditorActivity$BitmapWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    .line 3320
    .end local v6           #task:Lcom/miantan/myoface/EditorActivity$BitmapWorkerTask;
    :cond_c
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2
.end method

.method public setTypeIndex(I)V
    .locals 0
    .parameter "mTypeIndex"

    .prologue
    .line 3179
    iput p1, p0, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->typeindex:I

    .line 3180
    return-void
.end method
