.class public Lccsancom/mbridge/msdk/videocommon/view/MyImageView;
.super Lccsancom/mbridge/msdk/widget/MBImageView;
.source "MyImageView.java"


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/widget/MBImageView;-><init>(Lccsanandroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/widget/MBImageView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/widget/MBImageView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 11
    return-void
.end method


# virtual methods
.method protected onDraw(Lccsanandroid/graphics/Canvas;)V
    .locals 0

    .line 24
    :try_start_0
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/widget/MBImageView;->onDraw(Lccsanandroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 25
    :catch_0
    move-exception p1

    .line 27
    :goto_0
    return-void
.end method
