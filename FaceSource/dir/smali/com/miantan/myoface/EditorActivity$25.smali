.class Lcom/miantan/myoface/EditorActivity$25;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miantan/myoface/EditorActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miantan/myoface/EditorActivity;


# direct methods
.method constructor <init>(Lcom/miantan/myoface/EditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miantan/myoface/EditorActivity$25;->this$0:Lcom/miantan/myoface/EditorActivity;

    .line 2334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 2337
    iget-object v0, p0, Lcom/miantan/myoface/EditorActivity$25;->this$0:Lcom/miantan/myoface/EditorActivity;

    #getter for: Lcom/miantan/myoface/EditorActivity;->relativelayoutUserLearn:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/miantan/myoface/EditorActivity;->access$22(Lcom/miantan/myoface/EditorActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2338
    return-void
.end method
