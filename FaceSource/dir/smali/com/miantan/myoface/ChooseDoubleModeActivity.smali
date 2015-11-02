.class public Lcom/miantan/myoface/ChooseDoubleModeActivity;
.super Landroid/app/Activity;
.source "ChooseDoubleModeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private appname:Ljava/lang/String;

.field private btnBackIndex:Landroid/widget/Button;

.field private btnDMode0:Landroid/widget/Button;

.field private btnDMode1:Landroid/widget/Button;

.field private btnDMode2:Landroid/widget/Button;

.field private heightPixels:I

.field private heightdp:I

.field private heightdp_show_all:I

.field private heightdp_show_btns:I

.field private heightdp_title:I

.field private linearlayout_show_btns:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private music_boy:I

.field private music_girl:I

.field private sp_boy:Landroid/media/SoundPool;

.field private sp_girl:Landroid/media/SoundPool;

.field private widthPixels:I

.field private widthdp:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    const-string v0, "myotee"

    iput-object v0, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->appname:Ljava/lang/String;

    .line 26
    const-string v0, "myoface"

    iput-object v0, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->LOG_TAG:Ljava/lang/String;

    .line 41
    const/16 v0, 0x30

    iput v0, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->heightdp_title:I

    .line 21
    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .parameter "context"
    .parameter "dpValue"

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 191
    .local v0, scale:F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 3
    .parameter "context"
    .parameter "pxValue"

    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 199
    .local v0, scale:F
    div-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "arg0"

    .prologue
    const v12, 0x7f040008

    const v11, 0x7f040007

    const/4 v10, 0x1

    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 183
    :goto_0
    :pswitch_0
    return-void

    .line 116
    :pswitch_1
    const-string v0, "BtnChooseDMode0"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 117
    sget-boolean v0, Lcom/miantan/myoface/BasicData;->isSoundOn:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->sp_boy:Landroid/media/SoundPool;

    iget v1, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->music_boy:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 120
    :cond_0
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 121
    .local v9, modeintent:Landroid/content/Intent;
    const-class v0, Lcom/miantan/myoface/EditorActivity2;

    invoke-virtual {v9, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 122
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 123
    .local v8, modebundle:Landroid/os/Bundle;
    const-string v0, "dmode"

    const-string v1, "0"

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v0, "editType"

    const-string v1, "new"

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v9, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v9, v10}, Lcom/miantan/myoface/ChooseDoubleModeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 127
    invoke-virtual {p0, v11, v12}, Lcom/miantan/myoface/ChooseDoubleModeActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 135
    .end local v8           #modebundle:Landroid/os/Bundle;
    .end local v9           #modeintent:Landroid/content/Intent;
    :pswitch_2
    const-string v0, "BtnChooseDMode1"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    sget-boolean v0, Lcom/miantan/myoface/BasicData;->isSoundOn:Z

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->sp_girl:Landroid/media/SoundPool;

    iget v1, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->music_girl:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 139
    :cond_1
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 140
    .restart local v9       #modeintent:Landroid/content/Intent;
    const-class v0, Lcom/miantan/myoface/EditorActivity2;

    invoke-virtual {v9, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 141
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 142
    .restart local v8       #modebundle:Landroid/os/Bundle;
    const-string v0, "dmode"

    const-string v1, "1"

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v0, "editType"

    const-string v1, "new"

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v9, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v9, v10}, Lcom/miantan/myoface/ChooseDoubleModeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 146
    invoke-virtual {p0, v11, v12}, Lcom/miantan/myoface/ChooseDoubleModeActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 154
    .end local v8           #modebundle:Landroid/os/Bundle;
    .end local v9           #modeintent:Landroid/content/Intent;
    :pswitch_3
    const-string v0, "BtnChooseDMode2"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    sget-boolean v0, Lcom/miantan/myoface/BasicData;->isSoundOn:Z

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->sp_boy:Landroid/media/SoundPool;

    iget v1, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->music_boy:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 158
    :cond_2
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 159
    .restart local v9       #modeintent:Landroid/content/Intent;
    const-class v0, Lcom/miantan/myoface/EditorActivity2;

    invoke-virtual {v9, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 160
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 161
    .restart local v8       #modebundle:Landroid/os/Bundle;
    const-string v0, "dmode"

    const-string v1, "2"

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v0, "editType"

    const-string v1, "new"

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v9, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0, v9, v10}, Lcom/miantan/myoface/ChooseDoubleModeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 165
    invoke-virtual {p0, v11, v12}, Lcom/miantan/myoface/ChooseDoubleModeActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 172
    .end local v8           #modebundle:Landroid/os/Bundle;
    .end local v9           #modeintent:Landroid/content/Intent;
    :pswitch_4
    const-string v0, "BtnBackMainPageFromDoubleModePage"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 174
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 175
    .local v7, backIt:Landroid/content/Intent;
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v7}, Lcom/miantan/myoface/ChooseDoubleModeActivity;->setResult(ILandroid/content/Intent;)V

    .line 176
    invoke-virtual {p0}, Lcom/miantan/myoface/ChooseDoubleModeActivity;->finish()V

    .line 177
    const v0, 0x7f040006

    const v1, 0x7f040009

    invoke-virtual {p0, v0, v1}, Lcom/miantan/myoface/ChooseDoubleModeActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b000e
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x5

    const/4 v5, 0x1

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v3, 0x7f030002

    invoke-virtual {p0, v3}, Lcom/miantan/myoface/ChooseDoubleModeActivity;->setContentView(I)V

    .line 63
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 64
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/miantan/myoface/ChooseDoubleModeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 65
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->widthPixels:I

    .line 66
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->heightPixels:I

    .line 67
    iget v3, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->widthPixels:I

    int-to-float v3, v3

    invoke-static {p0, v3}, Lcom/miantan/myoface/ChooseDoubleModeActivity;->px2dip(Landroid/content/Context;F)I

    move-result v3

    iput v3, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->widthdp:I

    .line 68
    iget v3, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->heightPixels:I

    int-to-float v3, v3

    invoke-static {p0, v3}, Lcom/miantan/myoface/ChooseDoubleModeActivity;->px2dip(Landroid/content/Context;F)I

    move-result v3

    iput v3, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->heightdp:I

    .line 70
    iget v3, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->heightdp:I

    iget v4, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->heightdp_title:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->heightdp_show_all:I

    .line 71
    iget v3, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->heightdp_show_all:I

    add-int/lit16 v3, v3, -0x168

    div-int/lit8 v1, v3, 0x6

    .line 73
    .local v1, heightdp_per:I
    mul-int/lit8 v3, v1, 0x2

    add-int/lit16 v3, v3, 0x168

    iput v3, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->heightdp_show_btns:I

    .line 80
    const v3, 0x7f0b0010

    invoke-virtual {p0, v3}, Lcom/miantan/myoface/ChooseDoubleModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->linearlayout_show_btns:Landroid/widget/LinearLayout;

    .line 82
    iget-object v3, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->linearlayout_show_btns:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 83
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->heightdp_show_btns:I

    int-to-float v3, v3

    invoke-static {p0, v3}, Lcom/miantan/myoface/ChooseDoubleModeActivity;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 87
    const v3, 0x7f0b0012

    invoke-virtual {p0, v3}, Lcom/miantan/myoface/ChooseDoubleModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->btnDMode0:Landroid/widget/Button;

    .line 88
    const v3, 0x7f0b0014

    invoke-virtual {p0, v3}, Lcom/miantan/myoface/ChooseDoubleModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->btnDMode1:Landroid/widget/Button;

    .line 89
    const v3, 0x7f0b0016

    invoke-virtual {p0, v3}, Lcom/miantan/myoface/ChooseDoubleModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->btnDMode2:Landroid/widget/Button;

    .line 90
    const v3, 0x7f0b000e

    invoke-virtual {p0, v3}, Lcom/miantan/myoface/ChooseDoubleModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->btnBackIndex:Landroid/widget/Button;

    .line 93
    iget-object v3, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->btnDMode0:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v3, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->btnDMode1:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v3, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->btnDMode2:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v3, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->btnBackIndex:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    new-instance v3, Landroid/media/SoundPool;

    invoke-direct {v3, v7, v5, v6}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v3, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->sp_boy:Landroid/media/SoundPool;

    .line 100
    iget-object v3, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->sp_boy:Landroid/media/SoundPool;

    const/high16 v4, 0x7f05

    invoke-virtual {v3, p0, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->music_boy:I

    .line 102
    new-instance v3, Landroid/media/SoundPool;

    invoke-direct {v3, v7, v5, v6}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v3, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->sp_girl:Landroid/media/SoundPool;

    .line 103
    iget-object v3, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->sp_girl:Landroid/media/SoundPool;

    const v4, 0x7f050001

    invoke-virtual {v3, p0, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/miantan/myoface/ChooseDoubleModeActivity;->music_girl:I

    .line 105
    const-string v3, "EnterChooseDoubleModePage"

    invoke-static {p0, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 211
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 212
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 204
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 205
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 206
    return-void
.end method
