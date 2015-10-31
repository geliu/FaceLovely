.class Lcom/miantan/myoface/EditorActivity2$4;
.super Ljava/lang/Object;
.source "EditorActivity2.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miantan/myoface/EditorActivity2;->InitOp(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miantan/myoface/EditorActivity2;


# direct methods
.method constructor <init>(Lcom/miantan/myoface/EditorActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    .line 1374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 17
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1378
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-ltz p3, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemShow2:Ljava/util/List;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$26(Lcom/miantan/myoface/EditorActivity2;)Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    move/from16 v0, p3

    if-lt v0, v13, :cond_1

    .line 1761
    :cond_0
    :goto_0
    return-void

    .line 1383
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget v14, v14, Lcom/miantan/myoface/BasicDataApplication;->INDEX_BIANSHEN:I

    if-ne v13, v14, :cond_9

    .line 1445
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    aget-object v13, v13, v14

    const/4 v14, 0x1

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    aget v5, v13, v14

    .line 1450
    .local v5, pre_indexnum:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_PIC_INDEX:[Ljava/lang/Integer;

    aget-object v13, v13, p3

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1451
    .local v3, now_indexnum:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    aget-object v13, v13, v14

    const/4 v14, 0x1

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    aput v3, v13, v14

    .line 1454
    if-eqz v3, :cond_7

    .line 1456
    if-nez v5, :cond_2

    .line 1459
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_INDEX_TMP2:[[Ljava/lang/Integer;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v15}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v15

    iget-object v15, v15, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    move-object/from16 v16, v0

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static/range {v16 .. v16}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v16

    aget-object v15, v15, v16

    const/16 v16, 0x1

    aget-object v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    move-object/from16 v16, v0

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static/range {v16 .. v16}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_CLOTHES:I

    move/from16 v16, v0

    aget v15, v15, v16

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    .line 1460
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_INDEX_TMP2:[[Ljava/lang/Integer;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v15}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v15

    iget-object v15, v15, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    move-object/from16 v16, v0

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static/range {v16 .. v16}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v16

    aget-object v15, v15, v16

    const/16 v16, 0x1

    aget-object v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    move-object/from16 v16, v0

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static/range {v16 .. v16}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_BLACKGROUD:I

    move/from16 v16, v0

    aget v15, v15, v16

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    .line 1461
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_INDEX_TMP2:[[Ljava/lang/Integer;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v15}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v15

    iget-object v15, v15, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    move-object/from16 v16, v0

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static/range {v16 .. v16}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v16

    aget-object v15, v15, v16

    const/16 v16, 0x1

    aget-object v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    move-object/from16 v16, v0

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static/range {v16 .. v16}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_LIKE:I

    move/from16 v16, v0

    aget v15, v15, v16

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    .line 1462
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_INDEX_TMP2:[[Ljava/lang/Integer;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v15}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v15

    iget-object v15, v15, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    move-object/from16 v16, v0

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static/range {v16 .. v16}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v16

    aget-object v15, v15, v16

    const/16 v16, 0x1

    aget-object v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    move-object/from16 v16, v0

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static/range {v16 .. v16}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAT:I

    move/from16 v16, v0

    aget v15, v15, v16

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    .line 1465
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    aget-object v13, v13, v14

    const/4 v14, 0x1

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget v14, v14, Lcom/miantan/myoface/BasicDataApplication;->INDEX_CLOTHES:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v15}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v15

    iget-object v15, v15, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_PIC_INDEX_MAP:[[Ljava/lang/Integer;

    aget-object v15, v15, p3

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    aput v15, v13, v14

    .line 1466
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    aget-object v13, v13, v14

    const/4 v14, 0x1

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget v14, v14, Lcom/miantan/myoface/BasicDataApplication;->INDEX_BLACKGROUD:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v15}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v15

    iget-object v15, v15, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_PIC_INDEX_MAP:[[Ljava/lang/Integer;

    aget-object v15, v15, p3

    const/16 v16, 0x1

    aget-object v15, v15, v16

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    aput v15, v13, v14

    .line 1467
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    aget-object v13, v13, v14

    const/4 v14, 0x1

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget v14, v14, Lcom/miantan/myoface/BasicDataApplication;->INDEX_LIKE:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v15}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v15

    iget-object v15, v15, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_PIC_INDEX_MAP:[[Ljava/lang/Integer;

    aget-object v15, v15, p3

    const/16 v16, 0x2

    aget-object v15, v15, v16

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    aput v15, v13, v14

    .line 1468
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    aget-object v13, v13, v14

    const/4 v14, 0x1

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget v14, v14, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAT:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v15}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v15

    iget-object v15, v15, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_PIC_INDEX_MAP:[[Ljava/lang/Integer;

    aget-object v15, v15, p3

    const/16 v16, 0x3

    aget-object v15, v15, v16

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    aput v15, v13, v14

    .line 1484
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    aget-object v13, v13, v14

    const/4 v14, 0x1

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget v14, v14, Lcom/miantan/myoface/BasicDataApplication;->INDEX_CLOTHES:I

    aget v1, v13, v14

    .line 1485
    .local v1, indexnum:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    const/4 v15, 0x1

    #calls: Lcom/miantan/myoface/EditorActivity2;->getSexual(II)I
    invoke-static {v13, v14, v15}, Lcom/miantan/myoface/EditorActivity2;->access$20(Lcom/miantan/myoface/EditorActivity2;II)I

    move-result v12

    .line 1486
    .local v12, sex:I
    const/4 v4, 0x0

    .line 1487
    .local v4, pos:I
    if-nez v12, :cond_8

    .line 1489
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/miantan/myoface/BasicDataApplication;->get_CLOTHES_MAN_PIC_INDEX_POS()Ljava/util/Map;

    move-result-object v13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1491
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/miantan/myoface/BasicDataApplication;->get_CLOTHES_MAN_PIC_INDEX_POS()Ljava/util/Map;

    move-result-object v13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1492
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v15}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v15

    iget v15, v15, Lcom/miantan/myoface/BasicDataApplication;->INDEX_CLOTHES:I

    #calls: Lcom/miantan/myoface/EditorActivity2;->getJSFunParam(III)Ljava/lang/String;
    invoke-static {v13, v14, v15, v4}, Lcom/miantan/myoface/EditorActivity2;->access$21(Lcom/miantan/myoface/EditorActivity2;III)Ljava/lang/String;

    move-result-object v10

    .line 1493
    .local v10, sJSFunParam:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "javascript:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1495
    .local v11, sUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$7(Lcom/miantan/myoface/EditorActivity2;)Landroid/webkit/WebView;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1523
    .end local v10           #sJSFunParam:Ljava/lang/String;
    .end local v11           #sUrl:Ljava/lang/String;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    aget-object v13, v13, v14

    const/4 v14, 0x1

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget v14, v14, Lcom/miantan/myoface/BasicDataApplication;->INDEX_LIKE:I

    aget v1, v13, v14

    .line 1524
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/miantan/myoface/BasicDataApplication;->get_LIKE_PIC_INDEX_POS()Ljava/util/Map;

    move-result-object v13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1526
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/miantan/myoface/BasicDataApplication;->get_LIKE_PIC_INDEX_POS()Ljava/util/Map;

    move-result-object v13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1527
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v15}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v15

    iget v15, v15, Lcom/miantan/myoface/BasicDataApplication;->INDEX_LIKE:I

    #calls: Lcom/miantan/myoface/EditorActivity2;->getJSFunParam(III)Ljava/lang/String;
    invoke-static {v13, v14, v15, v4}, Lcom/miantan/myoface/EditorActivity2;->access$21(Lcom/miantan/myoface/EditorActivity2;III)Ljava/lang/String;

    move-result-object v10

    .line 1528
    .restart local v10       #sJSFunParam:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "javascript:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1530
    .restart local v11       #sUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$7(Lcom/miantan/myoface/EditorActivity2;)Landroid/webkit/WebView;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1534
    .end local v10           #sJSFunParam:Ljava/lang/String;
    .end local v11           #sUrl:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    aget-object v13, v13, v14

    const/4 v14, 0x1

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget v14, v14, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAT:I

    aget v1, v13, v14

    .line 1535
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/miantan/myoface/BasicDataApplication;->get_HAT_PIC_INDEX_POS()Ljava/util/Map;

    move-result-object v13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1537
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/miantan/myoface/BasicDataApplication;->get_HAT_PIC_INDEX_POS()Ljava/util/Map;

    move-result-object v13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1538
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v15}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v15

    iget v15, v15, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAT:I

    #calls: Lcom/miantan/myoface/EditorActivity2;->getJSFunParam(III)Ljava/lang/String;
    invoke-static {v13, v14, v15, v4}, Lcom/miantan/myoface/EditorActivity2;->access$21(Lcom/miantan/myoface/EditorActivity2;III)Ljava/lang/String;

    move-result-object v10

    .line 1539
    .restart local v10       #sJSFunParam:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "javascript:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1541
    .restart local v11       #sUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$7(Lcom/miantan/myoface/EditorActivity2;)Landroid/webkit/WebView;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1544
    .end local v10           #sJSFunParam:Ljava/lang/String;
    .end local v11           #sUrl:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    iget-object v13, v13, Lcom/miantan/myoface/EditorActivity2;->listGridViewAdapters2:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;

    invoke-virtual {v13}, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1470
    .end local v1           #indexnum:I
    .end local v4           #pos:I
    .end local v12           #sex:I
    :cond_7
    if-nez v3, :cond_3

    .line 1472
    if-eqz v5, :cond_3

    .line 1475
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    aget-object v13, v13, v14

    const/4 v14, 0x1

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget v14, v14, Lcom/miantan/myoface/BasicDataApplication;->INDEX_CLOTHES:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v15}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v15

    iget-object v15, v15, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_INDEX_TMP2:[[Ljava/lang/Integer;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    aput v15, v13, v14

    .line 1476
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    aget-object v13, v13, v14

    const/4 v14, 0x1

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget v14, v14, Lcom/miantan/myoface/BasicDataApplication;->INDEX_BLACKGROUD:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v15}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v15

    iget-object v15, v15, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_INDEX_TMP2:[[Ljava/lang/Integer;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    const/16 v16, 0x1

    aget-object v15, v15, v16

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    aput v15, v13, v14

    .line 1477
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    aget-object v13, v13, v14

    const/4 v14, 0x1

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget v14, v14, Lcom/miantan/myoface/BasicDataApplication;->INDEX_LIKE:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v15}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v15

    iget-object v15, v15, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_INDEX_TMP2:[[Ljava/lang/Integer;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    const/16 v16, 0x2

    aget-object v15, v15, v16

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    aput v15, v13, v14

    .line 1478
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    aget-object v13, v13, v14

    const/4 v14, 0x1

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget v14, v14, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAT:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v15}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v15

    iget-object v15, v15, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_INDEX_TMP2:[[Ljava/lang/Integer;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    const/16 v16, 0x3

    aget-object v15, v15, v16

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    aput v15, v13, v14

    goto/16 :goto_1

    .line 1498
    .restart local v1       #indexnum:I
    .restart local v4       #pos:I
    .restart local v12       #sex:I
    :cond_8
    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    .line 1500
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/miantan/myoface/BasicDataApplication;->get_CLOTHES_FEMALE_PIC_INDEX_POS()Ljava/util/Map;

    move-result-object v13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1502
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/miantan/myoface/BasicDataApplication;->get_CLOTHES_FEMALE_PIC_INDEX_POS()Ljava/util/Map;

    move-result-object v13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1503
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v15}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v15

    iget v15, v15, Lcom/miantan/myoface/BasicDataApplication;->INDEX_CLOTHES:I

    #calls: Lcom/miantan/myoface/EditorActivity2;->getJSFunParam(III)Ljava/lang/String;
    invoke-static {v13, v14, v15, v4}, Lcom/miantan/myoface/EditorActivity2;->access$21(Lcom/miantan/myoface/EditorActivity2;III)Ljava/lang/String;

    move-result-object v10

    .line 1504
    .restart local v10       #sJSFunParam:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "javascript:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1506
    .restart local v11       #sUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$7(Lcom/miantan/myoface/EditorActivity2;)Landroid/webkit/WebView;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1580
    .end local v1           #indexnum:I
    .end local v3           #now_indexnum:I
    .end local v4           #pos:I
    .end local v5           #pre_indexnum:I
    .end local v10           #sJSFunParam:Ljava/lang/String;
    .end local v11           #sUrl:Ljava/lang/String;
    .end local v12           #sex:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget v14, v14, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAIRCOLOR:I

    if-ne v13, v14, :cond_11

    .line 1582
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->HAIRCOLOR_PIC_SHOW_VALUE:[Ljava/lang/String;

    aget-object v13, v13, p3

    const-string v14, "select"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 1585
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    invoke-virtual {v13}, Lcom/miantan/myoface/EditorActivity2;->ShowColorPickerDialog2()V

    goto/16 :goto_0

    .line 1589
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsColor2:[[[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    aget-object v13, v13, v14

    const/4 v14, 0x1

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v15}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v15

    iget-object v15, v15, Lcom/miantan/myoface/BasicDataApplication;->HAIRCOLOR_PIC_SHOW_VALUE:[Ljava/lang/String;

    aget-object v15, v15, p3

    aput-object v15, v13, v14

    .line 1608
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget v14, v14, Lcom/miantan/myoface/BasicDataApplication;->INDEX_BLACKGROUD:I

    if-ne v13, v14, :cond_b

    .line 1610
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    aget-object v13, v13, v14

    const/4 v14, 0x0

    aget-object v14, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex2:Ljava/util/List;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$17(Lcom/miantan/myoface/EditorActivity2;)Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    move-object/from16 v16, v0

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static/range {v16 .. v16}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aput v13, v14, v15

    .line 1611
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    aget-object v13, v13, v14

    const/4 v14, 0x1

    aget-object v14, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex2:Ljava/util/List;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$17(Lcom/miantan/myoface/EditorActivity2;)Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    move-object/from16 v16, v0

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static/range {v16 .. v16}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aput v13, v14, v15

    .line 1613
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget v14, v14, Lcom/miantan/myoface/BasicDataApplication;->INDEX_QIPAO:I

    if-ne v13, v14, :cond_d

    .line 1615
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex2:Ljava/util/List;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$17(Lcom/miantan/myoface/EditorActivity2;)Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1616
    .restart local v1       #indexnum:I
    const/4 v13, -0x1

    if-ne v1, v13, :cond_c

    .line 1619
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->strEditQipao:Ljava/lang/String;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$25(Lcom/miantan/myoface/EditorActivity2;)Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    if-ne v13, v14, :cond_14

    .line 1621
    const/4 v6, 0x0

    .line 1622
    .local v6, qpindex:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    aget-object v13, v13, v14

    const/4 v14, 0x0

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    aput v6, v13, v14

    .line 1627
    .end local v6           #qpindex:I
    :cond_c
    :goto_4
    const/4 v13, -0x1

    if-eq v1, v13, :cond_d

    .line 1629
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    aget-object v13, v13, v14

    const/4 v14, 0x0

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    aput v1, v13, v14

    .line 1630
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    aget-object v13, v13, v14

    const/4 v14, 0x1

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    aput v1, v13, v14

    .line 1633
    .end local v1           #indexnum:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    iget-object v13, v13, Lcom/miantan/myoface/EditorActivity2;->listGridViewAdapters2:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;

    invoke-virtual {v13}, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->notifyDataSetChanged()V

    .line 1645
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget v14, v14, Lcom/miantan/myoface/BasicDataApplication;->INDEX_EYE:I

    if-eq v13, v14, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget v14, v14, Lcom/miantan/myoface/BasicDataApplication;->INDEX_EYEBROWS:I

    if-eq v13, v14, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget v14, v14, Lcom/miantan/myoface/BasicDataApplication;->INDEX_MOUSE:I

    if-eq v13, v14, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget v14, v14, Lcom/miantan/myoface/BasicDataApplication;->INDEX_NOSE:I

    if-ne v13, v14, :cond_f

    .line 1647
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    aget-object v13, v13, v14

    const/4 v14, 0x1

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget v14, v14, Lcom/miantan/myoface/BasicDataApplication;->INDEX_EXP:I

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 1648
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/miantan/myoface/BasicDataApplication;->get_EXP_PIC_INDEX_POS()Ljava/util/Map;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 1650
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/miantan/myoface/BasicDataApplication;->get_EXP_PIC_INDEX_POS()Ljava/util/Map;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1651
    .restart local v4       #pos:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v15}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v15

    iget v15, v15, Lcom/miantan/myoface/BasicDataApplication;->INDEX_EXP:I

    #calls: Lcom/miantan/myoface/EditorActivity2;->getJSFunParam(III)Ljava/lang/String;
    invoke-static {v13, v14, v15, v4}, Lcom/miantan/myoface/EditorActivity2;->access$21(Lcom/miantan/myoface/EditorActivity2;III)Ljava/lang/String;

    move-result-object v8

    .line 1652
    .local v8, sExpJSFunParam:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "javascript:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1653
    .local v9, sExpUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$7(Lcom/miantan/myoface/EditorActivity2;)Landroid/webkit/WebView;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1679
    .end local v4           #pos:I
    .end local v8           #sExpJSFunParam:Ljava/lang/String;
    .end local v9           #sExpUrl:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget v14, v14, Lcom/miantan/myoface/BasicDataApplication;->INDEX_QIPAO:I

    if-ne v13, v14, :cond_10

    .line 1681
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex2:Ljava/util/List;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$17(Lcom/miantan/myoface/EditorActivity2;)Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1682
    .restart local v1       #indexnum:I
    const/4 v13, -0x1

    if-ne v1, v13, :cond_15

    .line 1685
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->relativelayoutET:Landroid/widget/RelativeLayout;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$23(Lcom/miantan/myoface/EditorActivity2;)Landroid/widget/RelativeLayout;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1686
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mEditTextQipao:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$24(Lcom/miantan/myoface/EditorActivity2;)Landroid/widget/EditText;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1687
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mEditTextQipao:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$24(Lcom/miantan/myoface/EditorActivity2;)Landroid/widget/EditText;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 1688
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mEditTextQipao:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$24(Lcom/miantan/myoface/EditorActivity2;)Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/EditText;->requestFocus()Z

    .line 1689
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mEditTextQipao:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$24(Lcom/miantan/myoface/EditorActivity2;)Landroid/widget/EditText;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1690
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mEditTextQipao:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$24(Lcom/miantan/myoface/EditorActivity2;)Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "input_method"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 1691
    .local v2, inputManager:Landroid/view/inputmethod/InputMethodManager;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mEditTextQipao:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$24(Lcom/miantan/myoface/EditorActivity2;)Landroid/widget/EditText;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1705
    .end local v1           #indexnum:I
    .end local v2           #inputManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_10
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v15}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v15

    move/from16 v0, p3

    #calls: Lcom/miantan/myoface/EditorActivity2;->getJSFunParam(III)Ljava/lang/String;
    invoke-static {v13, v14, v15, v0}, Lcom/miantan/myoface/EditorActivity2;->access$21(Lcom/miantan/myoface/EditorActivity2;III)Ljava/lang/String;

    move-result-object v10

    .line 1706
    .restart local v10       #sJSFunParam:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "javascript:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1708
    .restart local v11       #sUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$7(Lcom/miantan/myoface/EditorActivity2;)Landroid/webkit/WebView;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1710
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->LOG_TAG:Ljava/lang/String;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$5(Lcom/miantan/myoface/EditorActivity2;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "url:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget v14, v14, Lcom/miantan/myoface/BasicDataApplication;->INDEX_QIPAO:I

    if-ne v13, v14, :cond_0

    .line 1736
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex2:Ljava/util/List;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$17(Lcom/miantan/myoface/EditorActivity2;)Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1737
    .restart local v1       #indexnum:I
    const/4 v13, -0x1

    if-ne v1, v13, :cond_0

    .line 1739
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "javascript:bubbl2eEditB(\'"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->strEditQipao2:Ljava/lang/String;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$22(Lcom/miantan/myoface/EditorActivity2;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\')"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1740
    .local v7, sEditUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$7(Lcom/miantan/myoface/EditorActivity2;)Landroid/webkit/WebView;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1741
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->LOG_TAG:Ljava/lang/String;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$5(Lcom/miantan/myoface/EditorActivity2;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "url:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->strEditQipao:Ljava/lang/String;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$25(Lcom/miantan/myoface/EditorActivity2;)Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    if-eq v13, v14, :cond_0

    .line 1745
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v15}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v15

    move/from16 v0, p3

    #calls: Lcom/miantan/myoface/EditorActivity2;->getJSFunParam(III)Ljava/lang/String;
    invoke-static {v13, v14, v15, v0}, Lcom/miantan/myoface/EditorActivity2;->access$21(Lcom/miantan/myoface/EditorActivity2;III)Ljava/lang/String;

    move-result-object v10

    .line 1746
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "javascript:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1748
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$7(Lcom/miantan/myoface/EditorActivity2;)Landroid/webkit/WebView;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1749
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->LOG_TAG:Ljava/lang/String;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$5(Lcom/miantan/myoface/EditorActivity2;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "url:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "javascript:bubbl2eEditA(\'"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->strEditQipao:Ljava/lang/String;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$25(Lcom/miantan/myoface/EditorActivity2;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\')"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1752
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$7(Lcom/miantan/myoface/EditorActivity2;)Landroid/webkit/WebView;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1753
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->LOG_TAG:Ljava/lang/String;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$5(Lcom/miantan/myoface/EditorActivity2;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "url:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1591
    .end local v1           #indexnum:I
    .end local v7           #sEditUrl:Ljava/lang/String;
    .end local v10           #sJSFunParam:Ljava/lang/String;
    .end local v11           #sUrl:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget v14, v14, Lcom/miantan/myoface/BasicDataApplication;->INDEX_SKINCOLOR:I

    if-ne v13, v14, :cond_13

    .line 1593
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->SKINCOLOR_PIC_SHOW_VALUE:[Ljava/lang/String;

    aget-object v13, v13, p3

    const-string v14, "select"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 1596
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    invoke-virtual {v13}, Lcom/miantan/myoface/EditorActivity2;->ShowColorPickerDialog2()V

    goto/16 :goto_0

    .line 1600
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsColor2:[[[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    aget-object v13, v13, v14

    const/4 v14, 0x1

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v15}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v15

    iget-object v15, v15, Lcom/miantan/myoface/BasicDataApplication;->SKINCOLOR_PIC_SHOW_VALUE:[Ljava/lang/String;

    aget-object v15, v15, p3

    aput-object v15, v13, v14

    goto/16 :goto_3

    .line 1604
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    aget-object v13, v13, v14

    const/4 v14, 0x1

    aget-object v14, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->listAllTypeElemIndex2:Ljava/util/List;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$17(Lcom/miantan/myoface/EditorActivity2;)Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    move-object/from16 v16, v0

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static/range {v16 .. v16}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aput v13, v14, v15

    goto/16 :goto_3

    .line 1625
    .restart local v1       #indexnum:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum2:[[[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    aget-object v13, v13, v14

    const/4 v14, 0x0

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v14

    const/4 v15, -0x1

    aput v15, v13, v14

    goto/16 :goto_4

    .line 1696
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->relativelayoutET:Landroid/widget/RelativeLayout;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity2;->access$23(Lcom/miantan/myoface/EditorActivity2;)Landroid/widget/RelativeLayout;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1697
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    const-string v14, "input_method"

    invoke-virtual {v13, v14}, Lcom/miantan/myoface/EditorActivity2;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity2$4;->this$0:Lcom/miantan/myoface/EditorActivity2;

    invoke-virtual {v14}, Lcom/miantan/myoface/EditorActivity2;->getCurrentFocus()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_5
.end method
