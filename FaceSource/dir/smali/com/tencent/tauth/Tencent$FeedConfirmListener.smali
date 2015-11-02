.class Lcom/tencent/tauth/Tencent$FeedConfirmListener;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# instance fields
.field private KEY_SHOWFEED:Ljava/lang/String;

.field private KEY_WORDING:Ljava/lang/String;

.field private SEND_INSTALL_APP_FEED_CGI:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/tauth/Tencent;

.field userListener:Lcom/tencent/tauth/IUiListener;


# direct methods
.method public constructor <init>(Lcom/tencent/tauth/Tencent;Lcom/tencent/tauth/IUiListener;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1471
    iput-object p1, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener;->this$0:Lcom/tencent/tauth/Tencent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1467
    const-string v0, "sendinstall"

    iput-object v0, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener;->KEY_SHOWFEED:Ljava/lang/String;

    .line 1468
    const-string v0, "installwording"

    iput-object v0, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener;->KEY_WORDING:Ljava/lang/String;

    .line 1469
    const-string v0, "http://appsupport.qq.com/cgi-bin/qzapps/mapp_addapp.cgi"

    iput-object v0, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener;->SEND_INSTALL_APP_FEED_CGI:Ljava/lang/String;

    .line 1472
    iput-object p2, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener;->userListener:Lcom/tencent/tauth/IUiListener;

    .line 1473
    return-void
.end method

.method private createContentView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1639
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1640
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1642
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1643
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1645
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1648
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1649
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1650
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1651
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 1653
    const/high16 v3, 0x4270

    mul-float/2addr v3, v0

    float-to-int v3, v3

    .line 1654
    const/high16 v4, 0x4270

    mul-float/2addr v4, v0

    float-to-int v4, v4

    .line 1655
    const/high16 v5, 0x4160

    mul-float/2addr v5, v0

    float-to-int v5, v5

    .line 1656
    const/high16 v5, 0x4190

    mul-float/2addr v5, v0

    float-to-int v5, v5

    .line 1657
    const/high16 v6, 0x40c0

    mul-float/2addr v6, v0

    float-to-int v6, v6

    .line 1658
    const/high16 v7, 0x4190

    mul-float/2addr v7, v0

    float-to-int v7, v7

    .line 1659
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1660
    const/16 v3, 0x9

    invoke-virtual {v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1661
    const/4 v3, 0x0

    invoke-virtual {v8, v3, v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1664
    invoke-virtual {v1, v2, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1667
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1668
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1669
    const/high16 v3, 0x4160

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1670
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1673
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1674
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1675
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 1676
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 1677
    const/high16 v3, 0x4339

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 1678
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1681
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1683
    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1684
    const/high16 v4, 0x4120

    mul-float/2addr v4, v0

    float-to-int v4, v4

    .line 1685
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x40a0

    mul-float/2addr v6, v0

    float-to-int v6, v6

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1686
    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1689
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1690
    const/16 v3, 0xd6

    const/16 v4, 0xd6

    const/16 v5, 0xd6

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1691
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 1692
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1694
    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1695
    const/4 v4, 0x0

    .line 1696
    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1697
    const/4 v5, 0x7

    const/4 v6, 0x5

    invoke-virtual {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1698
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x4140

    mul-float/2addr v7, v0

    float-to-int v7, v7

    invoke-virtual {v3, v5, v6, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1699
    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1702
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1703
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1705
    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1706
    const/4 v4, 0x7

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1707
    const/4 v4, 0x3

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1709
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1710
    const-string v5, "\u8df3\u8fc7"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1711
    const-string v5, "buttonNegt.png"

    invoke-direct {p0, v5, p1}, Lcom/tencent/tauth/Tencent$FeedConfirmListener;->getDrawable(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1712
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1713
    const/16 v5, 0x24

    const/16 v6, 0x61

    const/16 v7, 0x83

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 1714
    const/high16 v5, 0x41a0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextSize(F)V

    .line 1715
    invoke-virtual {v4, p5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1716
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setId(I)V

    .line 1717
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/high16 v7, 0x4234

    mul-float/2addr v7, v0

    float-to-int v7, v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1719
    const/high16 v6, 0x4160

    mul-float/2addr v6, v0

    float-to-int v6, v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1720
    const/high16 v6, 0x4080

    mul-float/2addr v6, v0

    float-to-int v6, v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1721
    const/high16 v6, 0x3f80

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1722
    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1724
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1725
    const-string v5, "\u786e\u5b9a"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1726
    const/high16 v5, 0x41a0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextSize(F)V

    .line 1727
    const/16 v5, 0xff

    const/16 v6, 0xff

    const/16 v7, 0xff

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 1728
    const-string v5, "buttonPost.png"

    invoke-direct {p0, v5, p1}, Lcom/tencent/tauth/Tencent$FeedConfirmListener;->getDrawable(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1729
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1730
    invoke-virtual {v4, p4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1731
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/high16 v7, 0x4234

    mul-float/2addr v7, v0

    float-to-int v7, v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1733
    const/high16 v6, 0x3f80

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1734
    const/high16 v6, 0x4080

    mul-float/2addr v6, v0

    float-to-int v6, v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1735
    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1742
    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1773
    const v2, 0x438b8000

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 1774
    const/high16 v3, 0x4323

    mul-float/2addr v3, v0

    float-to-int v3, v3

    .line 1775
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1781
    const/high16 v2, 0x4160

    mul-float/2addr v2, v0

    float-to-int v2, v2

    const/4 v3, 0x0

    const/high16 v5, 0x4140

    mul-float/2addr v5, v0

    float-to-int v5, v5

    const/high16 v6, 0x4140

    mul-float/2addr v6, v0

    float-to-int v6, v6

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 1783
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1784
    const/16 v2, 0xf7

    const/16 v3, 0xfb

    const/16 v4, 0xf7

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1787
    new-instance v2, Landroid/graphics/drawable/PaintDrawable;

    const/16 v3, 0xf7

    const/16 v4, 0xfb

    const/16 v5, 0xf7

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 1789
    const/high16 v3, 0x40a0

    mul-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 1790
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1791
    return-object v1
.end method

.method private getDrawable(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1602
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1603
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 1607
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 1608
    if-nez v2, :cond_0

    move-object v0, v1

    .line 1632
    :goto_0
    return-object v0

    .line 1611
    :cond_0
    const-string v0, ".9.png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1612
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1613
    if-eqz v2, :cond_1

    .line 1614
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    .line 1615
    invoke-static {v3}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    .line 1616
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1628
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 1630
    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1620
    goto :goto_0

    .line 1623
    :cond_2
    :try_start_1
    invoke-static {v2, p1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 1624
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1628
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private showFeedConfrimDialog(Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lorg/json/JSONObject;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 1527
    new-instance v6, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener;->this$0:Lcom/tencent/tauth/Tencent;

    #getter for: Lcom/tencent/tauth/Tencent;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/tencent/tauth/Tencent;->access$200(Lcom/tencent/tauth/Tencent;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1528
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1530
    iget-object v0, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener;->this$0:Lcom/tencent/tauth/Tencent;

    #getter for: Lcom/tencent/tauth/Tencent;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/tencent/tauth/Tencent;->access$200(Lcom/tencent/tauth/Tencent;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1534
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener;->this$0:Lcom/tencent/tauth/Tencent;

    #getter for: Lcom/tencent/tauth/Tencent;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/tencent/tauth/Tencent;->access$200(Lcom/tencent/tauth/Tencent;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1540
    :goto_0
    if-eqz v0, :cond_0

    .line 1541
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1544
    :cond_0
    new-instance v4, Lcom/tencent/tauth/Tencent$FeedConfirmListener$1;

    invoke-direct {v4, p0, v6, p2, p3}, Lcom/tencent/tauth/Tencent$FeedConfirmListener$1;-><init>(Lcom/tencent/tauth/Tencent$FeedConfirmListener;Landroid/app/Dialog;Lcom/tencent/tauth/IUiListener;Lorg/json/JSONObject;)V

    .line 1559
    new-instance v5, Lcom/tencent/tauth/Tencent$FeedConfirmListener$2;

    invoke-direct {v5, p0, v6, p2, p3}, Lcom/tencent/tauth/Tencent$FeedConfirmListener$2;-><init>(Lcom/tencent/tauth/Tencent$FeedConfirmListener;Landroid/app/Dialog;Lcom/tencent/tauth/IUiListener;Lorg/json/JSONObject;)V

    .line 1576
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 1577
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 1578
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1579
    iget-object v0, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener;->this$0:Lcom/tencent/tauth/Tencent;

    #getter for: Lcom/tencent/tauth/Tencent;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/tencent/tauth/Tencent;->access$200(Lcom/tencent/tauth/Tencent;)Landroid/app/Activity;

    move-result-object v1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tauth/Tencent$FeedConfirmListener;->createContentView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    .line 1581
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1582
    new-instance v0, Lcom/tencent/tauth/Tencent$FeedConfirmListener$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/tencent/tauth/Tencent$FeedConfirmListener$3;-><init>(Lcom/tencent/tauth/Tencent$FeedConfirmListener;Lcom/tencent/tauth/IUiListener;Lorg/json/JSONObject;)V

    .line 1593
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1594
    iget-object v0, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener;->this$0:Lcom/tencent/tauth/Tencent;

    #getter for: Lcom/tencent/tauth/Tencent;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/tencent/tauth/Tencent;->access$200(Lcom/tencent/tauth/Tencent;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener;->this$0:Lcom/tencent/tauth/Tencent;

    #getter for: Lcom/tencent/tauth/Tencent;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/tencent/tauth/Tencent;->access$200(Lcom/tencent/tauth/Tencent;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1595
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 1598
    :cond_1
    return-void

    .line 1535
    :catch_0
    move-exception v0

    .line 1537
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 1811
    iget-object v0, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener;->userListener:Lcom/tencent/tauth/IUiListener;

    if-eqz v0, :cond_0

    .line 1812
    iget-object v0, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener;->userListener:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    .line 1814
    :cond_0
    return-void
.end method

.method public onComplete(Lorg/json/JSONObject;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1477
    if-eqz p1, :cond_3

    .line 1480
    if-eqz p1, :cond_1

    .line 1482
    const-string v0, ""

    .line 1484
    :try_start_0
    iget-object v3, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener;->KEY_SHOWFEED:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    .line 1486
    :cond_0
    iget-object v2, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener;->KEY_WORDING:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1494
    :goto_0
    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1495
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " WORDING = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "xx"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    if-eqz v1, :cond_2

    .line 1497
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1498
    iget-object v1, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener;->userListener:Lcom/tencent/tauth/IUiListener;

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/tauth/Tencent$FeedConfirmListener;->showFeedConfrimDialog(Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lorg/json/JSONObject;)V

    .line 1514
    :cond_1
    :goto_1
    return-void

    .line 1504
    :cond_2
    iget-object v0, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener;->userListener:Lcom/tencent/tauth/IUiListener;

    if-eqz v0, :cond_1

    .line 1505
    iget-object v0, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener;->userListener:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onComplete(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 1510
    :cond_3
    iget-object v0, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener;->userListener:Lcom/tencent/tauth/IUiListener;

    if-eqz v0, :cond_1

    .line 1511
    iget-object v0, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener;->userListener:Lcom/tencent/tauth/IUiListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/tauth/IUiListener;->onComplete(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 1488
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 1
    .parameter

    .prologue
    .line 1804
    iget-object v0, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener;->userListener:Lcom/tencent/tauth/IUiListener;

    if-eqz v0, :cond_0

    .line 1805
    iget-object v0, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener;->userListener:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 1807
    :cond_0
    return-void
.end method

.method protected sendFeedConfirmCgi()V
    .locals 6

    .prologue
    .line 1796
    iget-object v0, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener;->this$0:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v0}, Lcom/tencent/tauth/Tencent;->composeActivityParams()Landroid/os/Bundle;

    move-result-object v3

    .line 1797
    iget-object v0, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener;->this$0:Lcom/tencent/tauth/Tencent;

    #getter for: Lcom/tencent/tauth/Tencent;->mQQToken:Lcom/tencent/tauth/QQToken;
    invoke-static {v0}, Lcom/tencent/tauth/Tencent;->access$300(Lcom/tencent/tauth/Tencent;)Lcom/tencent/tauth/QQToken;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener;->this$0:Lcom/tencent/tauth/Tencent;

    #getter for: Lcom/tencent/tauth/Tencent;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/tencent/tauth/Tencent;->access$200(Lcom/tencent/tauth/Tencent;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tauth/Tencent$FeedConfirmListener;->SEND_INSTALL_APP_FEED_CGI:Ljava/lang/String;

    const-string v4, "POST"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/tencent/sdkutil/HttpUtils;->requestAsync(Lcom/tencent/tauth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V

    .line 1800
    return-void
.end method
