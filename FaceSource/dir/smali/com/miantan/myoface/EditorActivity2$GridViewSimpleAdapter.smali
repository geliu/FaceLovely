.class public Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;
.super Landroid/widget/BaseAdapter;
.source "EditorActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miantan/myoface/EditorActivity2;
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

.field pos:I

.field final synthetic this$0:Lcom/miantan/myoface/EditorActivity2;

.field typeindex:I


# direct methods
.method public constructor <init>(Lcom/miantan/myoface/EditorActivity2;Landroid/content/Context;Ljava/util/List;)V
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
    .local p3, showList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 3997
    iput-object p1, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 3992
    iput v0, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->pos:I

    .line 3993
    iput v0, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->typeindex:I

    .line 3998
    iput-object p2, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->mcontext:Landroid/content/Context;

    .line 3999
    iput-object p3, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->list:Ljava/util/List;

    .line 4000
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 4004
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 4009
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 4014
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 4034
    if-nez p2, :cond_1

    .line 4035
    iget-object v8, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->mcontext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030013

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 4036
    .local v3, localView:Landroid/view/View;
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    const/4 v8, -0x2

    iget-object v9, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    iget-object v10, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->heightdp_griditem:I
    invoke-static {v10}, Lcom/miantan/myoface/EditorActivity2;->access$14(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v9, v10}, Lcom/miantan/myoface/EditorActivity2;->dip2px(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v5, v8, v9}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 4038
    .local v5, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4046
    .end local v5           #params:Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    iget v8, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->typeindex:I

    iget-object v9, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v9}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v9

    iget v9, v9, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAIRCOLOR:I

    if-ne v8, v9, :cond_5

    .line 4051
    iget-object v8, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v8}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v8

    iget-object v8, v8, Lcom/miantan/myoface/BasicDataApplication;->HAIRCOLOR_PIC_SHOW_VALUE:[Ljava/lang/String;

    aget-object v8, v8, p1

    const-string v9, "select"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4054
    iget-object v8, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v8}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v8

    iget-object v8, v8, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsColor2:[[[Ljava/lang/String;

    iget-object v9, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v9}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v9

    aget-object v8, v8, v9

    iget-object v9, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gPosition:I
    invoke-static {v9}, Lcom/miantan/myoface/EditorActivity2;->access$15(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v9

    aget-object v8, v8, v9

    iget v9, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->typeindex:I

    aget-object v1, v8, v9

    .line 4055
    .local v1, colorvalue:Ljava/lang/String;
    iget-object v8, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v8}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miantan/myoface/BasicDataApplication;->get_HAIRCOLOR_PIC_SHOW_POS()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 4057
    const/high16 v8, 0x7f06

    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4166
    .end local v1           #colorvalue:Ljava/lang/String;
    :goto_1
    iget v8, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->typeindex:I

    iget-object v9, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v9}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v9

    iget v9, v9, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAIRCOLOR:I

    if-eq v8, v9, :cond_0

    iget v8, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->typeindex:I

    iget-object v9, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v9}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v9

    iget v9, v9, Lcom/miantan/myoface/BasicDataApplication;->INDEX_SKINCOLOR:I

    if-ne v8, v9, :cond_11

    .line 4168
    :cond_0
    const/high16 v8, 0x7f0b

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 4169
    .local v4, mItemImage:Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->list:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4200
    :goto_2
    return-object v3

    .line 4042
    .end local v3           #localView:Landroid/view/View;
    .end local v4           #mItemImage:Landroid/widget/ImageView;
    :cond_1
    move-object v3, p2

    .restart local v3       #localView:Landroid/view/View;
    goto :goto_0

    .line 4061
    .restart local v1       #colorvalue:Ljava/lang/String;
    :cond_2
    const v8, 0x7f060001

    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 4066
    .end local v1           #colorvalue:Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v8}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v8

    iget-object v8, v8, Lcom/miantan/myoface/BasicDataApplication;->HAIRCOLOR_PIC_SHOW_VALUE:[Ljava/lang/String;

    aget-object v8, v8, p1

    iget-object v9, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v9}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v9

    iget-object v9, v9, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsColor2:[[[Ljava/lang/String;

    iget-object v10, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v10}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v10

    aget-object v9, v9, v10

    iget-object v10, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gPosition:I
    invoke-static {v10}, Lcom/miantan/myoface/EditorActivity2;->access$15(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v10

    aget-object v9, v9, v10

    iget v10, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->typeindex:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4068
    const v8, 0x7f060001

    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 4072
    :cond_4
    const/high16 v8, 0x7f06

    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 4076
    :cond_5
    iget v8, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->typeindex:I

    iget-object v9, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v9}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v9

    iget v9, v9, Lcom/miantan/myoface/BasicDataApplication;->INDEX_SKINCOLOR:I

    if-ne v8, v9, :cond_9

    .line 4082
    iget-object v8, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v8}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v8

    iget-object v8, v8, Lcom/miantan/myoface/BasicDataApplication;->SKINCOLOR_PIC_SHOW_VALUE:[Ljava/lang/String;

    aget-object v8, v8, p1

    const-string v9, "select"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 4085
    iget-object v8, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v8}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v8

    iget-object v8, v8, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsColor2:[[[Ljava/lang/String;

    iget-object v9, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v9}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v9

    aget-object v8, v8, v9

    iget-object v9, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gPosition:I
    invoke-static {v9}, Lcom/miantan/myoface/EditorActivity2;->access$15(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v9

    aget-object v8, v8, v9

    iget v9, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->typeindex:I

    aget-object v1, v8, v9

    .line 4086
    .restart local v1       #colorvalue:Ljava/lang/String;
    iget-object v8, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v8}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miantan/myoface/BasicDataApplication;->get_SKINCOLOR_PIC_SHOW_POS()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 4088
    const/high16 v8, 0x7f06

    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 4092
    :cond_6
    const v8, 0x7f060001

    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 4097
    .end local v1           #colorvalue:Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v8}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v8

    iget-object v8, v8, Lcom/miantan/myoface/BasicDataApplication;->SKINCOLOR_PIC_SHOW_VALUE:[Ljava/lang/String;

    aget-object v8, v8, p1

    iget-object v9, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v9}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v9

    iget-object v9, v9, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsColor2:[[[Ljava/lang/String;

    iget-object v10, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v10}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v10

    aget-object v9, v9, v10

    iget-object v10, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gPosition:I
    invoke-static {v10}, Lcom/miantan/myoface/EditorActivity2;->access$15(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v10

    aget-object v9, v9, v10

    iget v10, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->typeindex:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 4099
    const v8, 0x7f060001

    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 4103
    :cond_8
    const/high16 v8, 0x7f06

    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 4107
    :cond_9
    iget v8, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->typeindex:I

    iget-object v9, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v9}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v9

    iget v9, v9, Lcom/miantan/myoface/BasicDataApplication;->INDEX_QIPAO:I

    if-ne v8, v9, :cond_d

    .line 4109
    iget-object v8, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v8}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v8

    iget-object v8, v8, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    iget-object v9, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v9}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v9

    aget-object v8, v8, v9

    iget-object v9, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gPosition:I
    invoke-static {v9}, Lcom/miantan/myoface/EditorActivity2;->access$15(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v9

    aget-object v8, v8, v9

    iget v9, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->typeindex:I

    aget v2, v8, v9

    .line 4110
    .local v2, indexnum:I
    iget-object v8, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gPosition:I
    invoke-static {v8}, Lcom/miantan/myoface/EditorActivity2;->access$15(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v8

    if-nez v8, :cond_b

    .line 4113
    iget-object v8, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;
    invoke-static {v8}, Lcom/miantan/myoface/EditorActivity2;->access$16(Lcom/miantan/myoface/EditorActivity2;)Ljava/util/List;

    move-result-object v8

    iget v9, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->typeindex:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v2, :cond_a

    .line 4115
    const v8, 0x7f060001

    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 4118
    :cond_a
    const/high16 v8, 0x7f06

    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 4124
    :cond_b
    iget-object v8, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex2:Ljava/util/List;
    invoke-static {v8}, Lcom/miantan/myoface/EditorActivity2;->access$17(Lcom/miantan/myoface/EditorActivity2;)Ljava/util/List;

    move-result-object v8

    iget v9, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->typeindex:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v2, :cond_c

    .line 4126
    const v8, 0x7f060001

    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 4129
    :cond_c
    const/high16 v8, 0x7f06

    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 4135
    .end local v2           #indexnum:I
    :cond_d
    iget-object v8, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gPosition:I
    invoke-static {v8}, Lcom/miantan/myoface/EditorActivity2;->access$15(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v8

    if-nez v8, :cond_f

    .line 4137
    iget-object v8, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex:Ljava/util/List;
    invoke-static {v8}, Lcom/miantan/myoface/EditorActivity2;->access$16(Lcom/miantan/myoface/EditorActivity2;)Ljava/util/List;

    move-result-object v8

    iget v9, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->typeindex:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v9}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v9

    iget-object v9, v9, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    iget-object v10, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v10}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v10

    aget-object v9, v9, v10

    iget-object v10, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gPosition:I
    invoke-static {v10}, Lcom/miantan/myoface/EditorActivity2;->access$15(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v10

    aget-object v9, v9, v10

    iget v10, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->typeindex:I

    aget v9, v9, v10

    if-ne v8, v9, :cond_e

    .line 4139
    const v8, 0x7f060001

    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 4143
    :cond_e
    const/high16 v8, 0x7f06

    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 4148
    :cond_f
    iget-object v8, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex2:Ljava/util/List;
    invoke-static {v8}, Lcom/miantan/myoface/EditorActivity2;->access$17(Lcom/miantan/myoface/EditorActivity2;)Ljava/util/List;

    move-result-object v8

    iget v9, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->typeindex:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v9}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v9

    iget-object v9, v9, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    iget-object v10, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v10}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v10

    aget-object v9, v9, v10

    iget-object v10, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gPosition:I
    invoke-static {v10}, Lcom/miantan/myoface/EditorActivity2;->access$15(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v10

    aget-object v9, v9, v10

    iget v10, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->typeindex:I

    aget v9, v9, v10

    if-ne v8, v9, :cond_10

    .line 4150
    const v8, 0x7f060001

    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 4154
    :cond_10
    const/high16 v8, 0x7f06

    invoke-virtual {v3, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 4174
    :cond_11
    const/high16 v8, 0x7f0b

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 4179
    .restart local v4       #mItemImage:Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->list:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 4181
    .local v6, resId:I
    const/4 v0, 0x0

    .line 4182
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/miantan/myoface/BitmapCacheLru;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4183
    if-nez v0, :cond_12

    .line 4184
    new-instance v7, Lcom/miantan/myoface/EditorActivity2$BitmapWorkerTask;

    iget-object v8, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->this$0:Lcom/miantan/myoface/EditorActivity2;

    invoke-direct {v7, v8, v4}, Lcom/miantan/myoface/EditorActivity2$BitmapWorkerTask;-><init>(Lcom/miantan/myoface/EditorActivity2;Landroid/widget/ImageView;)V

    .line 4185
    .local v7, task:Lcom/miantan/myoface/EditorActivity2$BitmapWorkerTask;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lcom/miantan/myoface/EditorActivity2$BitmapWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    .line 4189
    .end local v7           #task:Lcom/miantan/myoface/EditorActivity2$BitmapWorkerTask;
    :cond_12
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4028
    .local p1, showList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->list:Ljava/util/List;

    .line 4029
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .parameter "mPos"

    .prologue
    .line 4019
    iput p1, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->pos:I

    .line 4020
    return-void
.end method

.method public setTypeIndex(I)V
    .locals 0
    .parameter "mTypeIndex"

    .prologue
    .line 4023
    iput p1, p0, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->typeindex:I

    .line 4024
    return-void
.end method
