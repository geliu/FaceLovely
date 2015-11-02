.class Lcom/miantan/myoface/EditorActivity$3;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miantan/myoface/EditorActivity;->InitOp(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/miantan/myoface/EditorActivity;


# direct methods
.method constructor <init>(Lcom/miantan/myoface/EditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    .line 956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 16
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
    .line 960
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-ltz p3, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->listAllTypeElemShow:Ljava/util/List;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$12(Lcom/miantan/myoface/EditorActivity;)Ljava/util/List;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->gCurTypeIndex:I
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$13(Lcom/miantan/myoface/EditorActivity;)I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    move/from16 v0, p3

    if-lt v0, v12, :cond_1

    .line 1191
    :cond_0
    :goto_0
    return-void

    .line 966
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->gCurTypeIndex:I
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$13(Lcom/miantan/myoface/EditorActivity;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget v13, v13, Lcom/miantan/myoface/BasicDataApplication;->INDEX_BIANSHEN:I

    if-ne v12, v13, :cond_5

    .line 1018
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v12

    iget-object v12, v12, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    invoke-static {}, Lcom/miantan/myoface/EditorActivity;->access$4()I

    move-result v13

    aget-object v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->gCurTypeIndex:I
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$13(Lcom/miantan/myoface/EditorActivity;)I

    move-result v13

    aget v4, v12, v13

    .line 1019
    .local v4, pre_indexnum:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v12

    iget-object v12, v12, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_PIC_INDEX:[Ljava/lang/Integer;

    aget-object v12, v12, p3

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1021
    .local v3, now_indexnum:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v12

    iget-object v12, v12, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    invoke-static {}, Lcom/miantan/myoface/EditorActivity;->access$4()I

    move-result v13

    aget-object v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->gCurTypeIndex:I
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$13(Lcom/miantan/myoface/EditorActivity;)I

    move-result v13

    aput v3, v12, v13

    .line 1024
    if-eqz v3, :cond_4

    .line 1026
    if-nez v4, :cond_2

    .line 1029
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v12

    iget-object v12, v12, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_INDEX_TMP:[Ljava/lang/Integer;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget-object v14, v14, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    invoke-static {}, Lcom/miantan/myoface/EditorActivity;->access$4()I

    move-result v15

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v15}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v15

    iget v15, v15, Lcom/miantan/myoface/BasicDataApplication;->INDEX_CLOTHES:I

    aget v14, v14, v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 1030
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v12

    iget-object v12, v12, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_INDEX_TMP:[Ljava/lang/Integer;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget-object v14, v14, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    invoke-static {}, Lcom/miantan/myoface/EditorActivity;->access$4()I

    move-result v15

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v15}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v15

    iget v15, v15, Lcom/miantan/myoface/BasicDataApplication;->INDEX_BLACKGROUD:I

    aget v14, v14, v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 1031
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v12

    iget-object v12, v12, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_INDEX_TMP:[Ljava/lang/Integer;

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget-object v14, v14, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    invoke-static {}, Lcom/miantan/myoface/EditorActivity;->access$4()I

    move-result v15

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v15}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v15

    iget v15, v15, Lcom/miantan/myoface/BasicDataApplication;->INDEX_LIKE:I

    aget v14, v14, v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 1032
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v12

    iget-object v12, v12, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_INDEX_TMP:[Ljava/lang/Integer;

    const/4 v13, 0x3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget-object v14, v14, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    invoke-static {}, Lcom/miantan/myoface/EditorActivity;->access$4()I

    move-result v15

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v15}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v15

    iget v15, v15, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAT:I

    aget v14, v14, v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 1035
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v12

    iget-object v12, v12, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    invoke-static {}, Lcom/miantan/myoface/EditorActivity;->access$4()I

    move-result v13

    aget-object v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget v13, v13, Lcom/miantan/myoface/BasicDataApplication;->INDEX_CLOTHES:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget-object v14, v14, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_PIC_INDEX_MAP:[[Ljava/lang/Integer;

    aget-object v14, v14, p3

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v12, v13

    .line 1036
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v12

    iget-object v12, v12, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    invoke-static {}, Lcom/miantan/myoface/EditorActivity;->access$4()I

    move-result v13

    aget-object v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget v13, v13, Lcom/miantan/myoface/BasicDataApplication;->INDEX_BLACKGROUD:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget-object v14, v14, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_PIC_INDEX_MAP:[[Ljava/lang/Integer;

    aget-object v14, v14, p3

    const/4 v15, 0x1

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v12, v13

    .line 1037
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v12

    iget-object v12, v12, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    invoke-static {}, Lcom/miantan/myoface/EditorActivity;->access$4()I

    move-result v13

    aget-object v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget v13, v13, Lcom/miantan/myoface/BasicDataApplication;->INDEX_LIKE:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget-object v14, v14, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_PIC_INDEX_MAP:[[Ljava/lang/Integer;

    aget-object v14, v14, p3

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v12, v13

    .line 1038
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v12

    iget-object v12, v12, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    invoke-static {}, Lcom/miantan/myoface/EditorActivity;->access$4()I

    move-result v13

    aget-object v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget v13, v13, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAT:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget-object v14, v14, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_PIC_INDEX_MAP:[[Ljava/lang/Integer;

    aget-object v14, v14, p3

    const/4 v15, 0x3

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v12, v13

    .line 1054
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget v13, v13, Lcom/miantan/myoface/BasicDataApplication;->INDEX_CLOTHES:I

    #calls: Lcom/miantan/myoface/EditorActivity;->getJsFun(I)Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/miantan/myoface/EditorActivity;->access$14(Lcom/miantan/myoface/EditorActivity;I)Ljava/lang/String;

    move-result-object v9

    .line 1056
    .local v9, sJsFun:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    invoke-static {}, Lcom/miantan/myoface/EditorActivity;->access$4()I

    move-result v14

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget v14, v14, Lcom/miantan/myoface/BasicDataApplication;->INDEX_CLOTHES:I

    aget v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1057
    .local v10, sParam:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "javascript:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1059
    .local v11, sUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$7(Lcom/miantan/myoface/EditorActivity;)Landroid/webkit/WebView;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget v13, v13, Lcom/miantan/myoface/BasicDataApplication;->INDEX_BLACKGROUD:I

    #calls: Lcom/miantan/myoface/EditorActivity;->getJsFun(I)Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/miantan/myoface/EditorActivity;->access$14(Lcom/miantan/myoface/EditorActivity;I)Ljava/lang/String;

    move-result-object v9

    .line 1064
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    invoke-static {}, Lcom/miantan/myoface/EditorActivity;->access$4()I

    move-result v14

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget v14, v14, Lcom/miantan/myoface/BasicDataApplication;->INDEX_BLACKGROUD:I

    aget v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1065
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "javascript:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1067
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$7(Lcom/miantan/myoface/EditorActivity;)Landroid/webkit/WebView;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1070
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget v13, v13, Lcom/miantan/myoface/BasicDataApplication;->INDEX_LIKE:I

    #calls: Lcom/miantan/myoface/EditorActivity;->getJsFun(I)Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/miantan/myoface/EditorActivity;->access$14(Lcom/miantan/myoface/EditorActivity;I)Ljava/lang/String;

    move-result-object v9

    .line 1072
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    invoke-static {}, Lcom/miantan/myoface/EditorActivity;->access$4()I

    move-result v14

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget v14, v14, Lcom/miantan/myoface/BasicDataApplication;->INDEX_LIKE:I

    aget v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1073
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "javascript:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1075
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$7(Lcom/miantan/myoface/EditorActivity;)Landroid/webkit/WebView;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1078
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget v13, v13, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAT:I

    #calls: Lcom/miantan/myoface/EditorActivity;->getJsFun(I)Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/miantan/myoface/EditorActivity;->access$14(Lcom/miantan/myoface/EditorActivity;I)Ljava/lang/String;

    move-result-object v9

    .line 1080
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget-object v13, v13, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    invoke-static {}, Lcom/miantan/myoface/EditorActivity;->access$4()I

    move-result v14

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget v14, v14, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAT:I

    aget v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1081
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "javascript:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1083
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$7(Lcom/miantan/myoface/EditorActivity;)Landroid/webkit/WebView;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1086
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    iget-object v12, v12, Lcom/miantan/myoface/EditorActivity;->listGridViewAdapters:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->gCurTypeIndex:I
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$13(Lcom/miantan/myoface/EditorActivity;)I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->gCurTypeIndex:I
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$13(Lcom/miantan/myoface/EditorActivity;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->setTypeIndex(I)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    iget-object v12, v12, Lcom/miantan/myoface/EditorActivity;->listGridViewAdapters:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->gCurTypeIndex:I
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$13(Lcom/miantan/myoface/EditorActivity;)I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;

    invoke-virtual {v12}, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1040
    .end local v9           #sJsFun:Ljava/lang/String;
    .end local v10           #sParam:Ljava/lang/String;
    .end local v11           #sUrl:Ljava/lang/String;
    :cond_4
    if-nez v3, :cond_3

    .line 1042
    if-eqz v4, :cond_3

    .line 1045
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v12

    iget-object v12, v12, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    invoke-static {}, Lcom/miantan/myoface/EditorActivity;->access$4()I

    move-result v13

    aget-object v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget v13, v13, Lcom/miantan/myoface/BasicDataApplication;->INDEX_CLOTHES:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget-object v14, v14, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_INDEX_TMP:[Ljava/lang/Integer;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v12, v13

    .line 1046
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v12

    iget-object v12, v12, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    invoke-static {}, Lcom/miantan/myoface/EditorActivity;->access$4()I

    move-result v13

    aget-object v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget v13, v13, Lcom/miantan/myoface/BasicDataApplication;->INDEX_BLACKGROUD:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget-object v14, v14, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_INDEX_TMP:[Ljava/lang/Integer;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v12, v13

    .line 1047
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v12

    iget-object v12, v12, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    invoke-static {}, Lcom/miantan/myoface/EditorActivity;->access$4()I

    move-result v13

    aget-object v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget v13, v13, Lcom/miantan/myoface/BasicDataApplication;->INDEX_LIKE:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget-object v14, v14, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_INDEX_TMP:[Ljava/lang/Integer;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v12, v13

    .line 1048
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v12

    iget-object v12, v12, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    invoke-static {}, Lcom/miantan/myoface/EditorActivity;->access$4()I

    move-result v13

    aget-object v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget v13, v13, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAT:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget-object v14, v14, Lcom/miantan/myoface/BasicDataApplication;->BIANSHEN_INDEX_TMP:[Ljava/lang/Integer;

    const/4 v15, 0x3

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v12, v13

    goto/16 :goto_1

    .line 1097
    .end local v3           #now_indexnum:I
    .end local v4           #pre_indexnum:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->gCurTypeIndex:I
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$13(Lcom/miantan/myoface/EditorActivity;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget v13, v13, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAIRCOLOR:I

    if-ne v12, v13, :cond_a

    .line 1099
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v12

    iget-object v12, v12, Lcom/miantan/myoface/BasicDataApplication;->HAIRCOLOR_PIC_SHOW_VALUE:[Ljava/lang/String;

    aget-object v12, v12, p3

    const-string v13, "select"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1102
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    invoke-virtual {v12}, Lcom/miantan/myoface/EditorActivity;->ShowColorPickerDialog()V

    goto/16 :goto_0

    .line 1106
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v12

    iget-object v12, v12, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsColor:[[Ljava/lang/String;

    invoke-static {}, Lcom/miantan/myoface/EditorActivity;->access$4()I

    move-result v13

    aget-object v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->gCurTypeIndex:I
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$13(Lcom/miantan/myoface/EditorActivity;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget-object v14, v14, Lcom/miantan/myoface/BasicDataApplication;->HAIRCOLOR_PIC_SHOW_VALUE:[Ljava/lang/String;

    aget-object v14, v14, p3

    aput-object v14, v12, v13

    .line 1130
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    iget-object v12, v12, Lcom/miantan/myoface/EditorActivity;->listGridViewAdapters:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->gCurTypeIndex:I
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$13(Lcom/miantan/myoface/EditorActivity;)I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->gCurTypeIndex:I
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$13(Lcom/miantan/myoface/EditorActivity;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->setTypeIndex(I)V

    .line 1131
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    iget-object v12, v12, Lcom/miantan/myoface/EditorActivity;->listGridViewAdapters:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->gCurTypeIndex:I
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$13(Lcom/miantan/myoface/EditorActivity;)I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;

    invoke-virtual {v12}, Lcom/miantan/myoface/EditorActivity$GridViewSimpleAdapter;->notifyDataSetChanged()V

    .line 1139
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->gCurTypeIndex:I
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$13(Lcom/miantan/myoface/EditorActivity;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget v13, v13, Lcom/miantan/myoface/BasicDataApplication;->INDEX_QIPAO:I

    if-ne v12, v13, :cond_7

    .line 1141
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$11(Lcom/miantan/myoface/EditorActivity;)Ljava/util/List;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->gCurTypeIndex:I
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$13(Lcom/miantan/myoface/EditorActivity;)I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1142
    .local v1, indexnum:I
    const/4 v12, 0x1

    if-ne v1, v12, :cond_d

    .line 1145
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->relativelayoutET:Landroid/widget/RelativeLayout;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$15(Lcom/miantan/myoface/EditorActivity;)Landroid/widget/RelativeLayout;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1146
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mEditTextQipao:Landroid/widget/EditText;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$16(Lcom/miantan/myoface/EditorActivity;)Landroid/widget/EditText;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1147
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mEditTextQipao:Landroid/widget/EditText;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$16(Lcom/miantan/myoface/EditorActivity;)Landroid/widget/EditText;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 1148
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mEditTextQipao:Landroid/widget/EditText;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$16(Lcom/miantan/myoface/EditorActivity;)Landroid/widget/EditText;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/EditText;->requestFocus()Z

    .line 1149
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mEditTextQipao:Landroid/widget/EditText;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$16(Lcom/miantan/myoface/EditorActivity;)Landroid/widget/EditText;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "input_method"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 1150
    .local v2, inputManager:Landroid/view/inputmethod/InputMethodManager;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mEditTextQipao:Landroid/widget/EditText;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$16(Lcom/miantan/myoface/EditorActivity;)Landroid/widget/EditText;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1160
    .end local v1           #indexnum:I
    .end local v2           #inputManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->gCurTypeIndex:I
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$13(Lcom/miantan/myoface/EditorActivity;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget v13, v13, Lcom/miantan/myoface/BasicDataApplication;->INDEX_EYE:I

    if-eq v12, v13, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->gCurTypeIndex:I
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$13(Lcom/miantan/myoface/EditorActivity;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget v13, v13, Lcom/miantan/myoface/BasicDataApplication;->INDEX_EYEBROWS:I

    if-eq v12, v13, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->gCurTypeIndex:I
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$13(Lcom/miantan/myoface/EditorActivity;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget v13, v13, Lcom/miantan/myoface/BasicDataApplication;->INDEX_MOUSE:I

    if-eq v12, v13, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->gCurTypeIndex:I
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$13(Lcom/miantan/myoface/EditorActivity;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget v13, v13, Lcom/miantan/myoface/BasicDataApplication;->INDEX_NOSE:I

    if-ne v12, v13, :cond_9

    .line 1162
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v12

    iget-object v12, v12, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    invoke-static {}, Lcom/miantan/myoface/EditorActivity;->access$4()I

    move-result v13

    aget-object v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget v13, v13, Lcom/miantan/myoface/BasicDataApplication;->INDEX_EXP:I

    const/4 v14, 0x0

    aput v14, v12, v13

    .line 1163
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget v13, v13, Lcom/miantan/myoface/BasicDataApplication;->INDEX_EXP:I

    #calls: Lcom/miantan/myoface/EditorActivity;->getJsFun(I)Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/miantan/myoface/EditorActivity;->access$14(Lcom/miantan/myoface/EditorActivity;I)Ljava/lang/String;

    move-result-object v6

    .line 1164
    .local v6, sExpJSFun:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    invoke-static {}, Lcom/miantan/myoface/EditorActivity;->access$4()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget v14, v14, Lcom/miantan/myoface/BasicDataApplication;->INDEX_EXP:I

    const/4 v15, 0x0

    #calls: Lcom/miantan/myoface/EditorActivity;->getPicIndexParamV2(III)Ljava/lang/String;
    invoke-static {v12, v13, v14, v15}, Lcom/miantan/myoface/EditorActivity;->access$17(Lcom/miantan/myoface/EditorActivity;III)Ljava/lang/String;

    move-result-object v7

    .line 1165
    .local v7, sExpParam:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "javascript:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1166
    .local v8, sExpUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$7(Lcom/miantan/myoface/EditorActivity;)Landroid/webkit/WebView;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1170
    .end local v6           #sExpJSFun:Ljava/lang/String;
    .end local v7           #sExpParam:Ljava/lang/String;
    .end local v8           #sExpUrl:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->gCurTypeIndex:I
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$13(Lcom/miantan/myoface/EditorActivity;)I

    move-result v13

    #calls: Lcom/miantan/myoface/EditorActivity;->getJsFun(I)Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/miantan/myoface/EditorActivity;->access$14(Lcom/miantan/myoface/EditorActivity;I)Ljava/lang/String;

    move-result-object v9

    .line 1172
    .restart local v9       #sJsFun:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    invoke-static {}, Lcom/miantan/myoface/EditorActivity;->access$4()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->gCurTypeIndex:I
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity;->access$13(Lcom/miantan/myoface/EditorActivity;)I

    move-result v14

    move/from16 v0, p3

    #calls: Lcom/miantan/myoface/EditorActivity;->getPicIndexParamV2(III)Ljava/lang/String;
    invoke-static {v12, v13, v14, v0}, Lcom/miantan/myoface/EditorActivity;->access$17(Lcom/miantan/myoface/EditorActivity;III)Ljava/lang/String;

    move-result-object v10

    .line 1173
    .restart local v10       #sParam:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "javascript:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1174
    .restart local v11       #sUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$7(Lcom/miantan/myoface/EditorActivity;)Landroid/webkit/WebView;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1175
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$5(Lcom/miantan/myoface/EditorActivity;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "url:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->gCurTypeIndex:I
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$13(Lcom/miantan/myoface/EditorActivity;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget v13, v13, Lcom/miantan/myoface/BasicDataApplication;->INDEX_QIPAO:I

    if-ne v12, v13, :cond_0

    .line 1182
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$11(Lcom/miantan/myoface/EditorActivity;)Ljava/util/List;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->gCurTypeIndex:I
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$13(Lcom/miantan/myoface/EditorActivity;)I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1183
    .restart local v1       #indexnum:I
    const/4 v12, 0x1

    if-ne v1, v12, :cond_0

    .line 1185
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "javascript:bubbleEdit(\'"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->strEditQipao:Ljava/lang/String;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$18(Lcom/miantan/myoface/EditorActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\')"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1186
    .local v5, sEditUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mWebview:Landroid/webkit/WebView;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$7(Lcom/miantan/myoface/EditorActivity;)Landroid/webkit/WebView;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1108
    .end local v1           #indexnum:I
    .end local v5           #sEditUrl:Ljava/lang/String;
    .end local v9           #sJsFun:Ljava/lang/String;
    .end local v10           #sParam:Ljava/lang/String;
    .end local v11           #sUrl:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->gCurTypeIndex:I
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$13(Lcom/miantan/myoface/EditorActivity;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v13

    iget v13, v13, Lcom/miantan/myoface/BasicDataApplication;->INDEX_SKINCOLOR:I

    if-ne v12, v13, :cond_c

    .line 1110
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v12

    iget-object v12, v12, Lcom/miantan/myoface/BasicDataApplication;->SKINCOLOR_PIC_SHOW_VALUE:[Ljava/lang/String;

    aget-object v12, v12, p3

    const-string v13, "select"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1113
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    invoke-virtual {v12}, Lcom/miantan/myoface/EditorActivity;->ShowColorPickerDialog()V

    goto/16 :goto_0

    .line 1117
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v12

    iget-object v12, v12, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsColor:[[Ljava/lang/String;

    invoke-static {}, Lcom/miantan/myoface/EditorActivity;->access$4()I

    move-result v13

    aget-object v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->gCurTypeIndex:I
    invoke-static {v13}, Lcom/miantan/myoface/EditorActivity;->access$13(Lcom/miantan/myoface/EditorActivity;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v14}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v14

    iget-object v14, v14, Lcom/miantan/myoface/BasicDataApplication;->SKINCOLOR_PIC_SHOW_VALUE:[Ljava/lang/String;

    aget-object v14, v14, p3

    aput-object v14, v12, v13

    goto/16 :goto_2

    .line 1121
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$6(Lcom/miantan/myoface/EditorActivity;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v12

    iget-object v12, v12, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsNum:[[I

    invoke-static {}, Lcom/miantan/myoface/EditorActivity;->access$4()I

    move-result v13

    aget-object v13, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->gCurTypeIndex:I
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$13(Lcom/miantan/myoface/EditorActivity;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->listAllTypeElemIndex:Ljava/util/List;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$11(Lcom/miantan/myoface/EditorActivity;)Ljava/util/List;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->gCurTypeIndex:I
    invoke-static {v15}, Lcom/miantan/myoface/EditorActivity;->access$13(Lcom/miantan/myoface/EditorActivity;)I

    move-result v15

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aput v12, v13, v14

    goto/16 :goto_2

    .line 1155
    .restart local v1       #indexnum:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->relativelayoutET:Landroid/widget/RelativeLayout;
    invoke-static {v12}, Lcom/miantan/myoface/EditorActivity;->access$15(Lcom/miantan/myoface/EditorActivity;)Landroid/widget/RelativeLayout;

    move-result-object v12

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    const-string v13, "input_method"

    invoke-virtual {v12, v13}, Lcom/miantan/myoface/EditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miantan/myoface/EditorActivity$3;->this$0:Lcom/miantan/myoface/EditorActivity;

    invoke-virtual {v13}, Lcom/miantan/myoface/EditorActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v12, v13, v14}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_3
.end method
