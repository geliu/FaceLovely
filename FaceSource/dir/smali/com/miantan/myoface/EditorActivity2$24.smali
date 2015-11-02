.class Lcom/miantan/myoface/EditorActivity2$24;
.super Ljava/lang/Object;
.source "EditorActivity2.java"

# interfaces
.implements Lcom/miantan/myoface/ColorPickerDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miantan/myoface/EditorActivity2;->ShowColorPickerDialog2()V
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
    iput-object p1, p0, Lcom/miantan/myoface/EditorActivity2$24;->this$0:Lcom/miantan/myoface/EditorActivity2;

    .line 2050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 7
    .parameter "color"

    .prologue
    const/4 v6, 0x6

    .line 2054
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2$24;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v3}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v3

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2$24;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v4

    iget v4, v4, Lcom/miantan/myoface/BasicDataApplication;->INDEX_HAIRCOLOR:I

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2$24;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v3}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v3

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2$24;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v4

    iget v4, v4, Lcom/miantan/myoface/BasicDataApplication;->INDEX_SKINCOLOR:I

    if-ne v3, v4, :cond_2

    .line 2056
    :cond_0
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2$24;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->LOG_TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/miantan/myoface/EditorActivity2;->access$5(Lcom/miantan/myoface/EditorActivity2;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "color:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|hex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 2059
    .local v0, colorvalue:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x6

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2060
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_1

    .line 2061
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x6

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2062
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v6, :cond_3

    .line 2067
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2$24;->this$0:Lcom/miantan/myoface/EditorActivity2;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2$24;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gPosition:I
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$15(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v4

    iget-object v5, p0, Lcom/miantan/myoface/EditorActivity2$24;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v5}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v5

    #calls: Lcom/miantan/myoface/EditorActivity2;->getJsFun(II)Ljava/lang/String;
    invoke-static {v3, v4, v5}, Lcom/miantan/myoface/EditorActivity2;->access$30(Lcom/miantan/myoface/EditorActivity2;II)Ljava/lang/String;

    move-result-object v1

    .line 2068
    .local v1, sJsFun:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "javascript:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(\'#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2069
    .local v2, sUrl:Ljava/lang/String;
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2$24;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mWebview:Landroid/webkit/WebView;
    invoke-static {v3}, Lcom/miantan/myoface/EditorActivity2;->access$7(Lcom/miantan/myoface/EditorActivity2;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2070
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2$24;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->LOG_TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/miantan/myoface/EditorActivity2;->access$5(Lcom/miantan/myoface/EditorActivity2;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sUrl:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2$24;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->mBasicDataApplication:Lcom/miantan/myoface/BasicDataApplication;
    invoke-static {v3}, Lcom/miantan/myoface/EditorActivity2;->access$6(Lcom/miantan/myoface/EditorActivity2;)Lcom/miantan/myoface/BasicDataApplication;

    move-result-object v3

    iget-object v3, v3, Lcom/miantan/myoface/BasicDataApplication;->itemIndexsColor2:[[[Ljava/lang/String;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2$24;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gMode:I
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$4(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v4

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2$24;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gPosition:I
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$15(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v4

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2$24;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "#"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2073
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2$24;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gPosition:I
    invoke-static {v3}, Lcom/miantan/myoface/EditorActivity2;->access$15(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v3

    if-nez v3, :cond_4

    .line 2075
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2$24;->this$0:Lcom/miantan/myoface/EditorActivity2;

    iget-object v3, v3, Lcom/miantan/myoface/EditorActivity2;->listGridViewAdapters:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2$24;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2$24;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->setTypeIndex(I)V

    .line 2076
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2$24;->this$0:Lcom/miantan/myoface/EditorActivity2;

    iget-object v3, v3, Lcom/miantan/myoface/EditorActivity2;->listGridViewAdapters:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2$24;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;

    invoke-virtual {v3}, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->notifyDataSetChanged()V

    .line 2084
    .end local v0           #colorvalue:Ljava/lang/String;
    .end local v1           #sJsFun:Ljava/lang/String;
    .end local v2           #sUrl:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 2064
    .restart local v0       #colorvalue:Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2080
    .restart local v1       #sJsFun:Ljava/lang/String;
    .restart local v2       #sUrl:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2$24;->this$0:Lcom/miantan/myoface/EditorActivity2;

    iget-object v3, v3, Lcom/miantan/myoface/EditorActivity2;->listGridViewAdapters2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2$24;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2$24;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->setTypeIndex(I)V

    .line 2081
    iget-object v3, p0, Lcom/miantan/myoface/EditorActivity2$24;->this$0:Lcom/miantan/myoface/EditorActivity2;

    iget-object v3, v3, Lcom/miantan/myoface/EditorActivity2;->listGridViewAdapters2:Ljava/util/List;

    iget-object v4, p0, Lcom/miantan/myoface/EditorActivity2$24;->this$0:Lcom/miantan/myoface/EditorActivity2;

    #getter for: Lcom/miantan/myoface/EditorActivity2;->gCurTypeIndex:I
    invoke-static {v4}, Lcom/miantan/myoface/EditorActivity2;->access$19(Lcom/miantan/myoface/EditorActivity2;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;

    invoke-virtual {v3}, Lcom/miantan/myoface/EditorActivity2$GridViewSimpleAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method
