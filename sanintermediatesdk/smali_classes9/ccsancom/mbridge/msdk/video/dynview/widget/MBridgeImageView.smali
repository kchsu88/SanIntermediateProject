.class public Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;
.super Lccsanandroid/widget/ImageView;
.source "MBridgeImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;
    }
.end annotation


# static fields
.field public static final GRADIENT_ALL:I = 0x4

.field public static final GRADIENT_BORDER:I = 0x1

.field public static final GRADIENT_LABEL:I = 0x2

.field public static final GRADIENT_LABEL_BACKGROUND:I = 0x3

.field public static final GRADIENT_NONE:I

.field private static final K:[Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;


# instance fields
.field private A:Lccsanandroid/content/res/ColorStateList;

.field private B:I

.field private C:I

.field private D:I

.field private E:[I

.field private F:[F

.field private G:I

.field private H:I

.field private I:Lccsanandroid/graphics/Shader;

.field private J:I

.field private a:Lccsanandroid/graphics/Paint;

.field private b:F

.field private c:Lccsanandroid/content/res/ColorStateList;

.field private d:Lccsanandroid/content/res/ColorStateList;

.field private e:Lccsanandroid/content/res/ColorStateList;

.field private f:I

.field private g:Z

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Lccsanandroid/text/TextPaint;

.field private x:Ljava/lang/String;

.field private y:Lccsanandroid/content/res/ColorStateList;

.field private z:Lccsanandroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 288
    const/4 v0, 0x3

    new-array v0, v0, [Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    sget-object v1, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;->a:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;->b:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;->c:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->K:[Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1

    .line 300
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 301
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1

    .line 310
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 311
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 5

    .line 321
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 86
    const/4 p3, 0x0

    iput-object p3, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->a:Lccsanandroid/graphics/Paint;

    .line 90
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->b:F

    .line 109
    const-string v0, "#ff000000"

    invoke-static {v0}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->f:I

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->m:Z

    .line 138
    const/4 v1, -0x1

    iput v1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->o:I

    .line 143
    const/16 v2, 0xf

    iput v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->p:I

    .line 148
    const-string v3, "#9FFF0000"

    invoke-static {v3}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->q:I

    .line 153
    const/4 v3, 0x2

    iput v3, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->r:I

    .line 158
    iput v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->s:I

    .line 163
    const/16 v2, 0x14

    iput v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->t:I

    .line 168
    iput v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->u:I

    .line 169
    iput v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->v:I

    .line 176
    iput-object p3, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->w:Lccsanandroid/text/TextPaint;

    .line 322
    nop

    .line 1332
    invoke-virtual {p0, v3, p3}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->setLayerType(ILccsanandroid/graphics/Paint;)V

    .line 1333
    new-instance v2, Lccsanandroid/graphics/Paint;

    invoke-direct {v2}, Lccsanandroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->a:Lccsanandroid/graphics/Paint;

    .line 1334
    new-instance v2, Lccsanandroid/text/TextPaint;

    invoke-direct {v2}, Lccsanandroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->w:Lccsanandroid/text/TextPaint;

    .line 1336
    if-eqz p2, :cond_2

    .line 1338
    const-string v2, "RoundImageView"

    invoke-static {p1, v2}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;)[I

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object p2

    .line 1339
    const-string v2, "RoundImageView_borderWidth"

    const-string v3, "styleable"

    invoke-static {p1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1340
    iget v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->b:F

    invoke-virtual {p2, v2, v4}, Lccsanandroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->b:F

    .line 1341
    const-string v2, "RoundImageView_borderColor"

    invoke-static {p1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1342
    invoke-virtual {p2, v2}, Lccsanandroid/content/res/TypedArray;->getColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->c:Lccsanandroid/content/res/ColorStateList;

    .line 1343
    const-string v2, "RoundImageView_displayBorder"

    invoke-static {p1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1344
    iget-boolean v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->g:Z

    invoke-virtual {p2, v2, v4}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->g:Z

    .line 1346
    const-string v2, "RoundImageView_android_topLeftRadius"

    invoke-static {p1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1347
    iget v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->h:F

    invoke-virtual {p2, v2, v4}, Lccsanandroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->h:F

    .line 1349
    const-string v2, "RoundImageView_android_topRightRadius"

    invoke-static {p1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1350
    iget v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->i:F

    invoke-virtual {p2, v2, v4}, Lccsanandroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->i:F

    .line 1352
    const-string v2, "RoundImageView_android_bottomLeftRadius"

    invoke-static {p1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1353
    iget v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->j:F

    invoke-virtual {p2, v2, v4}, Lccsanandroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->j:F

    .line 1355
    const-string v2, "RoundImageView_android_bottomRightRadius"

    invoke-static {p1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1356
    iget v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->k:F

    invoke-virtual {p2, v2, v4}, Lccsanandroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->k:F

    .line 1358
    const-string v2, "RoundImageView_android_radius"

    invoke-static {p1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1359
    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4}, Lccsanandroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 1360
    cmpl-float v4, v2, v4

    if-lez v4, :cond_0

    .line 1361
    iput v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->k:F

    iput v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->i:F

    iput v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->j:F

    iput v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->h:F

    .line 1363
    :cond_0
    const-string v2, "RoundImageView_displayType"

    invoke-static {p1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1364
    invoke-virtual {p2, v2, v1}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 1366
    if-ltz v2, :cond_1

    .line 1367
    sget-object v4, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->K:[Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    aget-object v2, v4, v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->l:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    goto :goto_0

    .line 1369
    :cond_1
    sget-object v2, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;->a:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    iput-object v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->l:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    .line 1372
    :goto_0
    const-string v2, "RoundImageView_displayLabel"

    invoke-static {p1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1373
    iget-boolean v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->m:Z

    invoke-virtual {p2, v2, v4}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->m:Z

    .line 1374
    const-string v2, "RoundImageView_android_text"

    invoke-static {p1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1375
    invoke-virtual {p2, v2}, Lccsanandroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->n:Ljava/lang/String;

    .line 1376
    const-string v2, "RoundImageView_labelBackground"

    invoke-static {p1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1377
    invoke-virtual {p2, v2}, Lccsanandroid/content/res/TypedArray;->getColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->e:Lccsanandroid/content/res/ColorStateList;

    .line 1379
    const-string v2, "RoundImageView_android_textSize"

    invoke-static {p1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1380
    iget v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->p:I

    invoke-virtual {p2, v2, v4}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->p:I

    .line 1382
    const-string v2, "RoundImageView_android_textColor"

    invoke-static {p1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1383
    invoke-virtual {p2, v2}, Lccsanandroid/content/res/TypedArray;->getColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->d:Lccsanandroid/content/res/ColorStateList;

    .line 1385
    const-string v2, "RoundImageView_labelWidth"

    invoke-static {p1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1386
    iget v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->s:I

    invoke-virtual {p2, v2, v4}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->s:I

    .line 1388
    const-string v2, "RoundImageView_ratioWidth"

    invoke-static {p1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1389
    iget v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->u:I

    invoke-virtual {p2, v2, v4}, Lccsanandroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->u:I

    .line 1391
    const-string v2, "RoundImageView_ratioHeight"

    invoke-static {p1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1392
    iget v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->v:I

    invoke-virtual {p2, v2, v4}, Lccsanandroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->v:I

    .line 1394
    const-string v2, "RoundImageView_labelGravity"

    invoke-static {p1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1395
    iget v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->r:I

    invoke-virtual {p2, v2, v4}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->r:I

    .line 1397
    const-string v2, "RoundImageView_startMargin"

    invoke-static {p1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1398
    iget v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->t:I

    invoke-virtual {p2, v2, v4}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->t:I

    .line 1400
    const-string v2, "RoundImageView_android_type"

    invoke-static {p1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1401
    invoke-virtual {p2, v2, v0}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->H:I

    .line 1403
    const-string v2, "RoundImageView_android_startColor"

    invoke-static {p1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1404
    invoke-virtual {p2, v2}, Lccsanandroid/content/res/TypedArray;->getColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->y:Lccsanandroid/content/res/ColorStateList;

    .line 1406
    const-string v2, "RoundImageView_android_centerColor"

    invoke-static {p1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1407
    invoke-virtual {p2, v2}, Lccsanandroid/content/res/TypedArray;->getColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->z:Lccsanandroid/content/res/ColorStateList;

    .line 1409
    const-string v2, "RoundImageView_android_endColor"

    invoke-static {p1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1410
    invoke-virtual {p2, v2}, Lccsanandroid/content/res/TypedArray;->getColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->A:Lccsanandroid/content/res/ColorStateList;

    .line 1412
    const-string v2, "RoundImageView_gradientContent"

    invoke-static {p1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1413
    invoke-virtual {p2, v2, v0}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->G:I

    .line 1414
    const-string v2, "RoundImageView_android_orientation"

    invoke-static {p1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1415
    invoke-virtual {p2, v2, v0}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->J:I

    .line 1417
    const-string v0, "RoundImageView_android_typeface"

    invoke-static {p1, v0, v3}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1418
    invoke-virtual {p2, v0, v1}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 1419
    const-string v2, "RoundImageView_android_textStyle"

    invoke-static {p1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/k;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1420
    invoke-virtual {p2, p1, v1}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 1421
    nop

    .line 2086
    nop

    .line 2087
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 2097
    :pswitch_0
    sget-object p3, Lccsanandroid/graphics/Typeface;->MONOSPACE:Lccsanandroid/graphics/Typeface;

    goto :goto_1

    .line 2093
    :pswitch_1
    sget-object p3, Lccsanandroid/graphics/Typeface;->SERIF:Lccsanandroid/graphics/Typeface;

    .line 2094
    goto :goto_1

    .line 2089
    :pswitch_2
    sget-object p3, Lccsanandroid/graphics/Typeface;->SANS_SERIF:Lccsanandroid/graphics/Typeface;

    .line 2090
    nop

    .line 2101
    :goto_1
    invoke-virtual {p0, p3, p1}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->setTypeface(Lccsanandroid/graphics/Typeface;I)V

    .line 1423
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->n:Ljava/lang/String;

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->x:Ljava/lang/String;

    .line 1424
    invoke-virtual {p2}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 323
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a()F
    .locals 4

    .line 494
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->s:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private b()Lccsanandroid/graphics/Path;
    .locals 6

    .line 650
    new-instance v0, Lccsanandroid/graphics/Path;

    invoke-direct {v0}, Lccsanandroid/graphics/Path;-><init>()V

    .line 651
    iget v1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->b:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 653
    sget-object v3, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$1;->a:[I

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->l:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .line 669
    new-instance v2, Lccsanandroid/graphics/RectF;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v2, v4, v4, v3, v5}, Lccsanandroid/graphics/RectF;-><init>(FFFF)V

    .line 670
    invoke-virtual {v2, v1, v1}, Lccsanandroid/graphics/RectF;->inset(FF)V

    .line 671
    sget-object v1, Lccsanandroid/graphics/Path$Direction;->CW:Lccsanandroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v1}, Lccsanandroid/graphics/Path;->addRect(Lccsanandroid/graphics/RectF;Lccsanandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 658
    :pswitch_0
    new-instance v2, Lccsanandroid/graphics/RectF;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v2, v4, v4, v3, v5}, Lccsanandroid/graphics/RectF;-><init>(FFFF)V

    .line 659
    invoke-virtual {v2, v1, v1}, Lccsanandroid/graphics/RectF;->inset(FF)V

    .line 660
    const/16 v1, 0x8

    new-array v1, v1, [F

    const/4 v3, 0x0

    iget v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->h:F

    aput v4, v1, v3

    const/4 v3, 0x1

    aput v4, v1, v3

    const/4 v3, 0x2

    iget v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->i:F

    aput v4, v1, v3

    const/4 v3, 0x3

    aput v4, v1, v3

    const/4 v3, 0x4

    iget v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->k:F

    aput v4, v1, v3

    const/4 v3, 0x5

    aput v4, v1, v3

    const/4 v3, 0x6

    iget v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->j:F

    aput v4, v1, v3

    const/4 v3, 0x7

    aput v4, v1, v3

    sget-object v3, Lccsanandroid/graphics/Path$Direction;->CW:Lccsanandroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v1, v3}, Lccsanandroid/graphics/Path;->addRoundRect(Lccsanandroid/graphics/RectF;[FLccsanandroid/graphics/Path$Direction;)V

    .line 667
    goto :goto_0

    .line 655
    :pswitch_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    sub-float/2addr v5, v1

    sget-object v1, Lccsanandroid/graphics/Path$Direction;->CW:Lccsanandroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v4, v5, v1}, Lccsanandroid/graphics/Path;->addCircle(FFFLccsanandroid/graphics/Path$Direction;)V

    .line 656
    nop

    .line 674
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .line 1196
    invoke-super {p0}, Lccsanandroid/widget/ImageView;->drawableStateChanged()V

    .line 1197
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->updateColorState()V

    .line 1198
    return-void
.end method

.method public getBorderColor()I
    .locals 1

    .line 705
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->f:I

    return v0
.end method

.method public getBorderWidth()F
    .locals 1

    .line 683
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->b:F

    return v0
.end method

.method public getDisplayType()Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;
    .locals 1

    .line 868
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->l:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    return-object v0
.end method

.method public getLabelBackground()I
    .locals 1

    .line 1055
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->q:I

    return v0
.end method

.method public getLabelGravity()I
    .locals 1

    .line 1064
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->r:I

    return v0
.end method

.method public getLabelText()Ljava/lang/String;
    .locals 1

    .line 1028
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelWidth()I
    .locals 1

    .line 1073
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->s:I

    return v0
.end method

.method public getLeftBottomRadius()F
    .locals 1

    .line 792
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->j:F

    return v0
.end method

.method public getLeftTopRadius()F
    .locals 1

    .line 748
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->h:F

    return v0
.end method

.method public getRightBottomRadius()F
    .locals 1

    .line 814
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->k:F

    return v0
.end method

.method public getRightTopRadius()F
    .locals 1

    .line 770
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->i:F

    return v0
.end method

.method public getStartMargin()I
    .locals 1

    .line 1082
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->t:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 1037
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->o:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .line 1046
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->p:I

    return v0
.end method

.method public getTypeface()Lccsanandroid/graphics/Typeface;
    .locals 1

    .line 1160
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->w:Lccsanandroid/text/TextPaint;

    invoke-virtual {v0}, Lccsanandroid/text/TextPaint;->getTypeface()Lccsanandroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 0

    .line 1268
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->postInvalidate()V

    .line 1269
    return-void
.end method

.method public isDisplayBorder()Z
    .locals 1

    .line 727
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->g:Z

    return v0
.end method

.method public isDisplayLabel()Z
    .locals 1

    .line 1019
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->m:Z

    return v0
.end method

.method protected onDraw(Lccsanandroid/graphics/Canvas;)V
    .locals 24

    .line 457
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 458
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 2480
    iget v3, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->h:F

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->h:F

    .line 2481
    iget v3, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->i:F

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->i:F

    .line 2482
    iget v3, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->j:F

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->j:F

    .line 2483
    iget v3, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->k:F

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->k:F

    .line 2484
    iget v3, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->b:F

    div-float v4, v1, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->b:F

    .line 2485
    iget v3, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->s:I

    int-to-float v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->s:I

    .line 2486
    iget v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->p:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->p:I

    .line 2487
    iget v3, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->t:I

    mul-float v1, v1, v2

    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->a()F

    move-result v4

    sub-float/2addr v1, v4

    float-to-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->t:I

    .line 459
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getHeight()I

    move-result v3

    sget-object v4, Lccsanandroid/graphics/Bitmap$Config;->ARGB_4444:Lccsanandroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v1

    .line 460
    new-instance v3, Lccsanandroid/graphics/Canvas;

    invoke-direct {v3, v1}, Lccsanandroid/graphics/Canvas;-><init>(Lccsanandroid/graphics/Bitmap;)V

    .line 461
    invoke-super {v0, v3}, Lccsanandroid/widget/ImageView;->onDraw(Lccsanandroid/graphics/Canvas;)V

    .line 462
    iget-object v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->a:Lccsanandroid/graphics/Paint;

    invoke-virtual {v4}, Lccsanandroid/graphics/Paint;->reset()V

    .line 463
    iget-object v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->a:Lccsanandroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lccsanandroid/graphics/Paint;->setAntiAlias(Z)V

    .line 464
    iget-object v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->a:Lccsanandroid/graphics/Paint;

    invoke-virtual {v4, v5}, Lccsanandroid/graphics/Paint;->setDither(Z)V

    .line 465
    nop

    .line 2503
    iget-object v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->l:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    sget-object v6, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;->a:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    const/4 v7, 0x0

    if-eq v4, v6, :cond_0

    .line 2504
    iget-object v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->a:Lccsanandroid/graphics/Paint;

    sget-object v6, Lccsanandroid/graphics/Paint$Style;->FILL:Lccsanandroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Lccsanandroid/graphics/Paint;->setStyle(Lccsanandroid/graphics/Paint$Style;)V

    .line 2505
    iget-object v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->a:Lccsanandroid/graphics/Paint;

    new-instance v6, Lccsanandroid/graphics/PorterDuffXfermode;

    sget-object v8, Lccsanandroid/graphics/PorterDuff$Mode;->DST_OUT:Lccsanandroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v8}, Lccsanandroid/graphics/PorterDuffXfermode;-><init>(Lccsanandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Lccsanandroid/graphics/Paint;->setXfermode(Lccsanandroid/graphics/Xfermode;)Lccsanandroid/graphics/Xfermode;

    .line 2506
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->b()Lccsanandroid/graphics/Path;

    move-result-object v4

    .line 2507
    sget-object v6, Lccsanandroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Lccsanandroid/graphics/Path$FillType;

    invoke-virtual {v4, v6}, Lccsanandroid/graphics/Path;->setFillType(Lccsanandroid/graphics/Path$FillType;)V

    .line 2508
    iget-object v6, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->a:Lccsanandroid/graphics/Paint;

    invoke-virtual {v3, v4, v6}, Lccsanandroid/graphics/Canvas;->drawPath(Lccsanandroid/graphics/Path;Lccsanandroid/graphics/Paint;)V

    .line 2509
    iget-object v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->a:Lccsanandroid/graphics/Paint;

    invoke-virtual {v4, v7}, Lccsanandroid/graphics/Paint;->setXfermode(Lccsanandroid/graphics/Xfermode;)Lccsanandroid/graphics/Xfermode;

    .line 2511
    :cond_0
    nop

    .line 2520
    iget v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->G:I

    if-eqz v4, :cond_3

    .line 2521
    iget v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->H:I

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 2534
    :pswitch_0
    new-instance v4, Lccsanandroid/graphics/SweepGradient;

    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v2

    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v2

    iget-object v9, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->E:[I

    iget-object v10, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->F:[F

    invoke-direct {v4, v6, v8, v9, v10}, Lccsanandroid/graphics/SweepGradient;-><init>(FF[I[F)V

    iput-object v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->I:Lccsanandroid/graphics/Shader;

    goto/16 :goto_1

    .line 2530
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getHeight()I

    move-result v6

    if-le v4, v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getWidth()I

    move-result v4

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getHeight()I

    move-result v4

    :goto_0
    int-to-float v4, v4

    div-float v11, v4, v2

    .line 2531
    new-instance v4, Lccsanandroid/graphics/RadialGradient;

    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v9, v6, v2

    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v10, v6, v2

    iget-object v12, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->E:[I

    iget-object v13, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->F:[F

    sget-object v14, Lccsanandroid/graphics/Shader$TileMode;->CLAMP:Lccsanandroid/graphics/Shader$TileMode;

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lccsanandroid/graphics/RadialGradient;-><init>(FFF[I[FLccsanandroid/graphics/Shader$TileMode;)V

    iput-object v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->I:Lccsanandroid/graphics/Shader;

    .line 2532
    goto :goto_1

    .line 2523
    :pswitch_2
    iget v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->J:I

    if-ne v4, v5, :cond_2

    .line 2524
    new-instance v4, Lccsanandroid/graphics/LinearGradient;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getHeight()I

    move-result v6

    int-to-float v12, v6

    iget-object v13, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->E:[I

    iget-object v14, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->F:[F

    sget-object v15, Lccsanandroid/graphics/Shader$TileMode;->CLAMP:Lccsanandroid/graphics/Shader$TileMode;

    move-object v8, v4

    invoke-direct/range {v8 .. v15}, Lccsanandroid/graphics/LinearGradient;-><init>(FFFF[I[FLccsanandroid/graphics/Shader$TileMode;)V

    iput-object v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->I:Lccsanandroid/graphics/Shader;

    goto :goto_1

    .line 2526
    :cond_2
    new-instance v4, Lccsanandroid/graphics/LinearGradient;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/16 v20, 0x0

    iget-object v8, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->E:[I

    iget-object v9, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->F:[F

    sget-object v23, Lccsanandroid/graphics/Shader$TileMode;->CLAMP:Lccsanandroid/graphics/Shader$TileMode;

    move-object/from16 v16, v4

    move/from16 v19, v6

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    invoke-direct/range {v16 .. v23}, Lccsanandroid/graphics/LinearGradient;-><init>(FFFF[I[FLccsanandroid/graphics/Shader$TileMode;)V

    iput-object v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->I:Lccsanandroid/graphics/Shader;

    .line 2512
    :cond_3
    :goto_1
    iget-boolean v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->g:Z

    const/4 v6, 0x4

    if-eqz v4, :cond_6

    .line 2632
    iget-object v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->a:Lccsanandroid/graphics/Paint;

    sget-object v8, Lccsanandroid/graphics/Paint$Style;->STROKE:Lccsanandroid/graphics/Paint$Style;

    invoke-virtual {v4, v8}, Lccsanandroid/graphics/Paint;->setStyle(Lccsanandroid/graphics/Paint$Style;)V

    .line 2633
    iget-object v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->a:Lccsanandroid/graphics/Paint;

    iget v8, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->b:F

    invoke-virtual {v4, v8}, Lccsanandroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2634
    iget v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->G:I

    if-eq v4, v6, :cond_5

    if-ne v4, v5, :cond_4

    goto :goto_2

    .line 2637
    :cond_4
    iget-object v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->a:Lccsanandroid/graphics/Paint;

    invoke-virtual {v4, v7}, Lccsanandroid/graphics/Paint;->setShader(Lccsanandroid/graphics/Shader;)Lccsanandroid/graphics/Shader;

    .line 2638
    iget-object v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->a:Lccsanandroid/graphics/Paint;

    iget v8, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->f:I

    invoke-virtual {v4, v8}, Lccsanandroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 2635
    :cond_5
    :goto_2
    iget-object v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->a:Lccsanandroid/graphics/Paint;

    iget-object v8, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->I:Lccsanandroid/graphics/Shader;

    invoke-virtual {v4, v8}, Lccsanandroid/graphics/Paint;->setShader(Lccsanandroid/graphics/Shader;)Lccsanandroid/graphics/Shader;

    .line 2640
    :goto_3
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->b()Lccsanandroid/graphics/Path;

    move-result-object v4

    .line 2641
    iget-object v8, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->a:Lccsanandroid/graphics/Paint;

    invoke-virtual {v3, v4, v8}, Lccsanandroid/graphics/Canvas;->drawPath(Lccsanandroid/graphics/Path;Lccsanandroid/graphics/Paint;)V

    .line 2513
    :cond_6
    iget-boolean v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->m:Z

    const/4 v9, 0x0

    if-eqz v4, :cond_c

    .line 3546
    new-instance v4, Lccsanandroid/graphics/Path;

    invoke-direct {v4}, Lccsanandroid/graphics/Path;-><init>()V

    .line 3547
    new-instance v8, Lccsanandroid/graphics/Path;

    invoke-direct {v8}, Lccsanandroid/graphics/Path;-><init>()V

    .line 3548
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->a()F

    move-result v10

    .line 3550
    iget v11, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->r:I

    packed-switch v11, :pswitch_data_1

    goto/16 :goto_4

    .line 3582
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getWidth()I

    move-result v11

    iget v12, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->t:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v4, v11, v12}, Lccsanandroid/graphics/Path;->moveTo(FF)V

    .line 3583
    neg-float v11, v10

    invoke-virtual {v4, v11, v9}, Lccsanandroid/graphics/Path;->rLineTo(FF)V

    .line 3584
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    iget v13, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->t:I

    int-to-float v13, v13

    add-float/2addr v13, v10

    sub-float/2addr v12, v13

    invoke-virtual {v4, v11, v12}, Lccsanandroid/graphics/Path;->lineTo(FF)V

    .line 3585
    invoke-virtual {v4, v9, v10}, Lccsanandroid/graphics/Path;->rLineTo(FF)V

    .line 3586
    invoke-virtual {v4}, Lccsanandroid/graphics/Path;->close()V

    .line 3588
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget v12, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->t:I

    int-to-float v12, v12

    div-float/2addr v10, v2

    add-float/2addr v12, v10

    sub-float/2addr v11, v12

    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v8, v11, v12}, Lccsanandroid/graphics/Path;->moveTo(FF)V

    .line 3589
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    iget v13, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->t:I

    int-to-float v13, v13

    add-float/2addr v13, v10

    sub-float/2addr v12, v13

    invoke-virtual {v8, v11, v12}, Lccsanandroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_4

    .line 3572
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getWidth()I

    move-result v11

    iget v12, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->t:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual {v4, v11, v9}, Lccsanandroid/graphics/Path;->moveTo(FF)V

    .line 3573
    neg-float v11, v10

    invoke-virtual {v4, v11, v9}, Lccsanandroid/graphics/Path;->rLineTo(FF)V

    .line 3574
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getWidth()I

    move-result v12

    int-to-float v12, v12

    iget v13, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->t:I

    int-to-float v13, v13

    add-float/2addr v13, v10

    invoke-virtual {v4, v12, v13}, Lccsanandroid/graphics/Path;->lineTo(FF)V

    .line 3575
    invoke-virtual {v4, v9, v11}, Lccsanandroid/graphics/Path;->rLineTo(FF)V

    .line 3576
    invoke-virtual {v4}, Lccsanandroid/graphics/Path;->close()V

    .line 3578
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget v12, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->t:I

    int-to-float v12, v12

    div-float/2addr v10, v2

    add-float/2addr v12, v10

    sub-float/2addr v11, v12

    invoke-virtual {v8, v11, v9}, Lccsanandroid/graphics/Path;->moveTo(FF)V

    .line 3579
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget v12, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->t:I

    int-to-float v12, v12

    add-float/2addr v12, v10

    invoke-virtual {v8, v11, v12}, Lccsanandroid/graphics/Path;->lineTo(FF)V

    .line 3580
    goto :goto_4

    .line 3562
    :pswitch_5
    iget v11, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->t:I

    int-to-float v11, v11

    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v4, v11, v12}, Lccsanandroid/graphics/Path;->moveTo(FF)V

    .line 3563
    invoke-virtual {v4, v10, v9}, Lccsanandroid/graphics/Path;->rLineTo(FF)V

    .line 3564
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    iget v12, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->t:I

    int-to-float v12, v12

    add-float/2addr v12, v10

    sub-float/2addr v11, v12

    invoke-virtual {v4, v9, v11}, Lccsanandroid/graphics/Path;->lineTo(FF)V

    .line 3565
    invoke-virtual {v4, v9, v10}, Lccsanandroid/graphics/Path;->rLineTo(FF)V

    .line 3566
    invoke-virtual {v4}, Lccsanandroid/graphics/Path;->close()V

    .line 3568
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    iget v12, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->t:I

    int-to-float v12, v12

    div-float/2addr v10, v2

    add-float/2addr v12, v10

    sub-float/2addr v11, v12

    invoke-virtual {v8, v9, v11}, Lccsanandroid/graphics/Path;->moveTo(FF)V

    .line 3569
    iget v11, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->t:I

    int-to-float v11, v11

    add-float/2addr v11, v10

    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8, v11, v10}, Lccsanandroid/graphics/Path;->lineTo(FF)V

    .line 3570
    goto :goto_4

    .line 3552
    :pswitch_6
    iget v11, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->t:I

    int-to-float v11, v11

    invoke-virtual {v4, v11, v9}, Lccsanandroid/graphics/Path;->moveTo(FF)V

    .line 3553
    invoke-virtual {v4, v10, v9}, Lccsanandroid/graphics/Path;->rLineTo(FF)V

    .line 3554
    iget v11, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->t:I

    int-to-float v11, v11

    add-float/2addr v11, v10

    invoke-virtual {v4, v9, v11}, Lccsanandroid/graphics/Path;->lineTo(FF)V

    .line 3555
    neg-float v11, v10

    invoke-virtual {v4, v9, v11}, Lccsanandroid/graphics/Path;->rLineTo(FF)V

    .line 3556
    invoke-virtual {v4}, Lccsanandroid/graphics/Path;->close()V

    .line 3558
    iget v11, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->t:I

    int-to-float v11, v11

    div-float/2addr v10, v2

    add-float/2addr v11, v10

    invoke-virtual {v8, v9, v11}, Lccsanandroid/graphics/Path;->moveTo(FF)V

    .line 3559
    iget v11, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->t:I

    int-to-float v11, v11

    add-float/2addr v11, v10

    invoke-virtual {v8, v11, v9}, Lccsanandroid/graphics/Path;->lineTo(FF)V

    .line 3560
    nop

    .line 3592
    :goto_4
    iget-object v10, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->w:Lccsanandroid/text/TextPaint;

    invoke-virtual {v10, v5}, Lccsanandroid/text/TextPaint;->setAntiAlias(Z)V

    .line 3593
    iget-object v5, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->w:Lccsanandroid/text/TextPaint;

    sget-object v10, Lccsanandroid/graphics/Paint$Style;->FILL:Lccsanandroid/graphics/Paint$Style;

    invoke-virtual {v5, v10}, Lccsanandroid/text/TextPaint;->setStyle(Lccsanandroid/graphics/Paint$Style;)V

    .line 3594
    iget v5, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->G:I

    const/4 v10, 0x3

    if-eq v5, v10, :cond_8

    if-ne v5, v6, :cond_7

    goto :goto_5

    .line 3597
    :cond_7
    iget-object v5, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->w:Lccsanandroid/text/TextPaint;

    invoke-virtual {v5, v7}, Lccsanandroid/text/TextPaint;->setShader(Lccsanandroid/graphics/Shader;)Lccsanandroid/graphics/Shader;

    .line 3598
    iget-object v5, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->w:Lccsanandroid/text/TextPaint;

    iget v6, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->q:I

    invoke-virtual {v5, v6}, Lccsanandroid/text/TextPaint;->setColor(I)V

    goto :goto_6

    .line 3595
    :cond_8
    :goto_5
    iget-object v5, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->w:Lccsanandroid/text/TextPaint;

    iget-object v6, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->I:Lccsanandroid/graphics/Shader;

    invoke-virtual {v5, v6}, Lccsanandroid/text/TextPaint;->setShader(Lccsanandroid/graphics/Shader;)Lccsanandroid/graphics/Shader;

    .line 3600
    :goto_6
    iget-object v5, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->w:Lccsanandroid/text/TextPaint;

    invoke-virtual {v3, v4, v5}, Lccsanandroid/graphics/Canvas;->drawPath(Lccsanandroid/graphics/Path;Lccsanandroid/graphics/Paint;)V

    .line 3602
    iget-object v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->w:Lccsanandroid/text/TextPaint;

    iget v5, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->p:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lccsanandroid/text/TextPaint;->setTextSize(F)V

    .line 3603
    iget v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->G:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    .line 3604
    iget-object v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->w:Lccsanandroid/text/TextPaint;

    iget-object v6, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->I:Lccsanandroid/graphics/Shader;

    invoke-virtual {v4, v6}, Lccsanandroid/text/TextPaint;->setShader(Lccsanandroid/graphics/Shader;)Lccsanandroid/graphics/Shader;

    goto :goto_7

    .line 3606
    :cond_9
    iget-object v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->w:Lccsanandroid/text/TextPaint;

    invoke-virtual {v4, v7}, Lccsanandroid/text/TextPaint;->setShader(Lccsanandroid/graphics/Shader;)Lccsanandroid/graphics/Shader;

    .line 3607
    iget-object v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->w:Lccsanandroid/text/TextPaint;

    iget v6, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->o:I

    invoke-virtual {v4, v6}, Lccsanandroid/text/TextPaint;->setColor(I)V

    .line 3609
    :goto_7
    iget-object v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->x:Ljava/lang/String;

    if-nez v4, :cond_a

    const-string v4, ""

    iput-object v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->x:Ljava/lang/String;

    .line 3610
    :cond_a
    iget-object v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->w:Lccsanandroid/text/TextPaint;

    sget-object v6, Lccsanandroid/graphics/Paint$Align;->CENTER:Lccsanandroid/graphics/Paint$Align;

    invoke-virtual {v4, v6}, Lccsanandroid/text/TextPaint;->setTextAlign(Lccsanandroid/graphics/Paint$Align;)V

    .line 3612
    iget-object v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->w:Lccsanandroid/text/TextPaint;

    iget-object v6, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->x:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lccsanandroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 3613
    new-instance v6, Lccsanandroid/graphics/PathMeasure;

    const/4 v7, 0x0

    invoke-direct {v6, v8, v7}, Lccsanandroid/graphics/PathMeasure;-><init>(Lccsanandroid/graphics/Path;Z)V

    .line 3614
    invoke-virtual {v6}, Lccsanandroid/graphics/PathMeasure;->getLength()F

    move-result v6

    .line 3615
    cmpl-float v10, v4, v6

    if-lez v10, :cond_b

    .line 3616
    iget-object v10, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->x:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v4, v10

    .line 3617
    sub-float/2addr v4, v6

    .line 3618
    div-float/2addr v4, v10

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v4, v10

    .line 3619
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->x:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v4, v5

    sub-int/2addr v11, v4

    invoke-virtual {v10, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "..."

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->x:Ljava/lang/String;

    .line 3621
    :cond_b
    iget-object v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->w:Lccsanandroid/text/TextPaint;

    invoke-virtual {v4}, Lccsanandroid/text/TextPaint;->getFontMetricsInt()Lccsanandroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    .line 3622
    iget v5, v4, Lccsanandroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v6, v4, Lccsanandroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v2

    iget v2, v4, Lccsanandroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v2, v2

    sub-float v7, v5, v2

    .line 3623
    iget-object v4, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->x:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v2, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->w:Lccsanandroid/text/TextPaint;

    move-object v5, v8

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lccsanandroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Lccsanandroid/graphics/Path;FFLccsanandroid/graphics/Paint;)V

    .line 466
    :cond_c
    iget-object v2, v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->a:Lccsanandroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v9, v9, v2}, Lccsanandroid/graphics/Canvas;->drawBitmap(Lccsanandroid/graphics/Bitmap;FFLccsanandroid/graphics/Paint;)V

    .line 467
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lccsanandroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_d

    .line 468
    invoke-virtual {v1}, Lccsanandroid/graphics/Bitmap;->recycle()V

    .line 470
    :cond_d
    goto :goto_8

    .line 471
    :cond_e
    move-object/from16 v3, p1

    invoke-super/range {p0 .. p1}, Lccsanandroid/widget/ImageView;->onDraw(Lccsanandroid/graphics/Canvas;)V

    .line 473
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 430
    invoke-static {p1}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 431
    invoke-static {p2}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 432
    iget v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->u:I

    if-eqz v2, :cond_0

    iget v3, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->v:I

    if-eqz v3, :cond_0

    .line 433
    if-eqz v0, :cond_0

    .line 434
    mul-int v3, v3, v0

    div-int/2addr v3, v2

    int-to-float p2, v3

    .line 435
    float-to-int p2, p2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p2, v2}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 438
    :cond_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->l:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    sget-object v3, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;->b:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    if-ne v2, v3, :cond_3

    .line 440
    if-ge v0, v1, :cond_1

    .line 441
    goto :goto_0

    .line 443
    :cond_1
    move p1, p2

    .line 445
    :goto_0
    if-gtz v0, :cond_2

    .line 446
    goto :goto_1

    .line 445
    :cond_2
    move p2, p1

    .line 448
    :goto_1
    invoke-super {p0, p2, p2}, Lccsanandroid/widget/ImageView;->onMeasure(II)V

    .line 449
    goto :goto_2

    .line 450
    :cond_3
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/ImageView;->onMeasure(II)V

    .line 452
    :goto_2
    return-void
.end method

.method public postInvalidate()V
    .locals 2

    .line 1273
    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1274
    invoke-super {p0}, Lccsanandroid/widget/ImageView;->postInvalidate()V

    goto :goto_0

    .line 1276
    :cond_0
    invoke-super {p0}, Lccsanandroid/widget/ImageView;->invalidate()V

    .line 1278
    :goto_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 714
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->f:I

    if-eq v0, p1, :cond_0

    .line 715
    iput p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->f:I

    .line 716
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->g:Z

    if-eqz p1, :cond_0

    .line 717
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->postInvalidate()V

    .line 719
    :cond_0
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 1

    .line 692
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->b:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 693
    iput p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->b:F

    .line 694
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->g:Z

    if-eqz p1, :cond_0

    .line 695
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->postInvalidate()V

    .line 697
    :cond_0
    return-void
.end method

.method public setDisplayBorder(Z)V
    .locals 1

    .line 736
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->g:Z

    if-eq v0, p1, :cond_0

    .line 737
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->g:Z

    .line 738
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->postInvalidate()V

    .line 740
    :cond_0
    return-void
.end method

.method public setDisplayLabel(Z)V
    .locals 1

    .line 890
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->m:Z

    if-eq v0, p1, :cond_0

    .line 891
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->m:Z

    .line 892
    if-eqz p1, :cond_0

    .line 893
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->postInvalidate()V

    .line 895
    :cond_0
    return-void
.end method

.method public setDisplayType(Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;)V
    .locals 1

    .line 877
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->l:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    if-eq v0, p1, :cond_0

    .line 878
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->l:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    .line 879
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->m:Z

    if-eqz p1, :cond_0

    .line 880
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->postInvalidate()V

    .line 882
    :cond_0
    return-void
.end method

.method public setGradientContent(I)V
    .locals 1

    .line 1176
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->G:I

    if-eq v0, p1, :cond_0

    .line 1177
    iput p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->G:I

    .line 1178
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->invalidate()V

    .line 1180
    :cond_0
    return-void
.end method

.method public setGradientType(I)V
    .locals 1

    .line 1169
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->H:I

    if-eq v0, p1, :cond_0

    .line 1170
    iput p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->H:I

    .line 1171
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->invalidate()V

    .line 1173
    :cond_0
    return-void
.end method

.method public setLabelBackground(I)V
    .locals 1

    .line 955
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->q:I

    if-eq v0, p1, :cond_0

    .line 956
    iput p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->q:I

    .line 957
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->m:Z

    if-eqz p1, :cond_0

    .line 958
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->postInvalidate()V

    .line 960
    :cond_0
    return-void
.end method

.method public setLabelBackground(Lccsanandroid/content/res/ColorStateList;)V
    .locals 0

    .line 968
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->e:Lccsanandroid/content/res/ColorStateList;

    .line 969
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->m:Z

    if-eqz p1, :cond_0

    .line 970
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->invalidate()V

    .line 972
    :cond_0
    return-void
.end method

.method public setLabelGravity(I)V
    .locals 1

    .line 980
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->r:I

    if-eq v0, p1, :cond_0

    .line 981
    iput p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->r:I

    .line 982
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->m:Z

    if-eqz p1, :cond_0

    .line 983
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->postInvalidate()V

    .line 985
    :cond_0
    return-void
.end method

.method public setLabelText(Ljava/lang/String;)V
    .locals 1

    .line 903
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->n:Ljava/lang/String;

    invoke-static {v0, p1}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 904
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->n:Ljava/lang/String;

    .line 905
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->x:Ljava/lang/String;

    .line 906
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->m:Z

    if-eqz p1, :cond_0

    .line 907
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->postInvalidate()V

    .line 909
    :cond_0
    return-void
.end method

.method public setLabelWidth(I)V
    .locals 1

    .line 993
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->s:I

    if-eq v0, p1, :cond_0

    .line 994
    iput p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->s:I

    .line 995
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->m:Z

    if-eqz p1, :cond_0

    .line 996
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->postInvalidate()V

    .line 998
    :cond_0
    return-void
.end method

.method public setLeftBottomRadius(F)V
    .locals 1

    .line 801
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->j:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 802
    iput p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->j:F

    .line 803
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->l:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    sget-object v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;->a:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    if-eq p1, v0, :cond_0

    .line 804
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->postInvalidate()V

    .line 806
    :cond_0
    return-void
.end method

.method public setLeftTopRadius(F)V
    .locals 1

    .line 757
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->h:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 758
    iput p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->h:F

    .line 759
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->l:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    sget-object v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;->a:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    if-eq p1, v0, :cond_0

    .line 760
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->postInvalidate()V

    .line 762
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1188
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->J:I

    if-eq v0, p1, :cond_0

    .line 1189
    iput p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->J:I

    .line 1190
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->invalidate()V

    .line 1192
    :cond_0
    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1, p1, p1, p1}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->setRadius(FFFF)V

    .line 860
    return-void
.end method

.method public setRadius(FFFF)V
    .locals 1

    .line 839
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->h:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->i:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->j:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->k:F

    cmpl-float v0, v0, p4

    if-nez v0, :cond_0

    .line 843
    return-void

    .line 845
    :cond_0
    iput p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->h:F

    .line 846
    iput p2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->i:F

    .line 847
    iput p3, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->j:F

    .line 848
    iput p4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->k:F

    .line 849
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->l:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    sget-object p2, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;->a:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    if-eq p1, p2, :cond_1

    .line 850
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->postInvalidate()V

    .line 851
    :cond_1
    return-void
.end method

.method public setRightBottomRadius(F)V
    .locals 1

    .line 823
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 824
    iput p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->k:F

    .line 825
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->l:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    sget-object v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;->a:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    if-eq p1, v0, :cond_0

    .line 826
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->postInvalidate()V

    .line 828
    :cond_0
    return-void
.end method

.method public setRightTopRadius(F)V
    .locals 1

    .line 779
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->i:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 780
    iput p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->i:F

    .line 781
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->l:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    sget-object v0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;->a:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView$a;

    if-eq p1, v0, :cond_0

    .line 782
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->postInvalidate()V

    .line 784
    :cond_0
    return-void
.end method

.method public setStartMargin(I)V
    .locals 1

    .line 1006
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->t:I

    if-eq v0, p1, :cond_0

    .line 1007
    iput p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->t:I

    .line 1008
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->m:Z

    if-eqz p1, :cond_0

    .line 1009
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->postInvalidate()V

    .line 1011
    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 917
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->o:I

    if-eq v0, p1, :cond_0

    .line 918
    iput p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->o:I

    .line 919
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->m:Z

    if-eqz p1, :cond_0

    .line 920
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->postInvalidate()V

    .line 922
    :cond_0
    return-void
.end method

.method public setTextColor(Lccsanandroid/content/res/ColorStateList;)V
    .locals 0

    .line 930
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->d:Lccsanandroid/content/res/ColorStateList;

    .line 931
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->m:Z

    if-eqz p1, :cond_0

    .line 932
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->invalidate()V

    .line 934
    :cond_0
    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    .line 942
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->p:I

    if-eq v0, p1, :cond_0

    .line 943
    iput p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->p:I

    .line 944
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->m:Z

    if-eqz p1, :cond_0

    .line 945
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->postInvalidate()V

    .line 947
    :cond_0
    return-void
.end method

.method public setTypeface(Lccsanandroid/graphics/Typeface;)V
    .locals 1

    .line 1145
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->w:Lccsanandroid/text/TextPaint;

    invoke-virtual {v0}, Lccsanandroid/text/TextPaint;->getTypeface()Lccsanandroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 1146
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->w:Lccsanandroid/text/TextPaint;

    invoke-virtual {v0, p1}, Lccsanandroid/text/TextPaint;->setTypeface(Lccsanandroid/graphics/Typeface;)Lccsanandroid/graphics/Typeface;

    .line 1147
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->m:Z

    if-eqz p1, :cond_0

    .line 1148
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->postInvalidate()V

    .line 1150
    :cond_0
    return-void
.end method

.method public setTypeface(Lccsanandroid/graphics/Typeface;I)V
    .locals 3

    .line 1114
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p2, :cond_4

    .line 1115
    if-nez p1, :cond_0

    .line 1116
    invoke-static {p2}, Lccsanandroid/graphics/Typeface;->defaultFromStyle(I)Lccsanandroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 1118
    :cond_0
    invoke-static {p1, p2}, Lccsanandroid/graphics/Typeface;->create(Lccsanandroid/graphics/Typeface;I)Lccsanandroid/graphics/Typeface;

    move-result-object p1

    .line 1121
    :goto_0
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->setTypeface(Lccsanandroid/graphics/Typeface;)V

    .line 1123
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lccsanandroid/graphics/Typeface;->getStyle()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 1124
    :goto_1
    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, p2

    .line 1125
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->w:Lccsanandroid/text/TextPaint;

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p2, v1}, Lccsanandroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1126
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->w:Lccsanandroid/text/TextPaint;

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    const/high16 v0, -0x41800000    # -0.25f

    :cond_3
    invoke-virtual {p2, v0}, Lccsanandroid/text/TextPaint;->setTextSkewX(F)V

    .line 1127
    goto :goto_2

    .line 1128
    :cond_4
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->w:Lccsanandroid/text/TextPaint;

    invoke-virtual {p2, v1}, Lccsanandroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1129
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->w:Lccsanandroid/text/TextPaint;

    invoke-virtual {p2, v0}, Lccsanandroid/text/TextPaint;->setTextSkewX(F)V

    .line 1130
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->setTypeface(Lccsanandroid/graphics/Typeface;)V

    .line 1132
    :goto_2
    return-void
.end method

.method public updateColorState()V
    .locals 6

    .line 1204
    nop

    .line 1205
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->getDrawableState()[I

    move-result-object v0

    .line 1206
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->c:Lccsanandroid/content/res/ColorStateList;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 1207
    invoke-virtual {v1, v0, v3}, Lccsanandroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 1208
    iget v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->f:I

    if-eq v4, v1, :cond_0

    .line 1209
    iput v1, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->f:I

    .line 1210
    const/4 v1, 0x1

    goto :goto_0

    .line 1213
    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->e:Lccsanandroid/content/res/ColorStateList;

    if-eqz v4, :cond_1

    .line 1214
    invoke-virtual {v4, v0, v3}, Lccsanandroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 1215
    iget v5, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->q:I

    if-eq v4, v5, :cond_1

    .line 1216
    iput v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->q:I

    .line 1217
    const/4 v1, 0x1

    .line 1220
    :cond_1
    iget-object v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->d:Lccsanandroid/content/res/ColorStateList;

    if-eqz v4, :cond_2

    .line 1221
    invoke-virtual {v4, v0, v3}, Lccsanandroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 1222
    iget v5, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->o:I

    if-eq v5, v4, :cond_2

    .line 1223
    iput v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->o:I

    .line 1224
    const/4 v1, 0x1

    .line 1227
    :cond_2
    iget-object v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->y:Lccsanandroid/content/res/ColorStateList;

    if-eqz v4, :cond_3

    .line 1228
    invoke-virtual {v4, v0, v3}, Lccsanandroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 1229
    iget v5, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->B:I

    if-eq v4, v5, :cond_3

    .line 1230
    iput v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->B:I

    .line 1231
    const/4 v1, 0x1

    .line 1234
    :cond_3
    iget-object v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->z:Lccsanandroid/content/res/ColorStateList;

    if-eqz v4, :cond_4

    .line 1235
    invoke-virtual {v4, v0, v3}, Lccsanandroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 1236
    iget v5, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->C:I

    if-eq v4, v5, :cond_4

    .line 1237
    iput v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->C:I

    .line 1238
    const/4 v1, 0x1

    .line 1241
    :cond_4
    iget-object v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->A:Lccsanandroid/content/res/ColorStateList;

    if-eqz v4, :cond_5

    .line 1242
    invoke-virtual {v4, v0, v3}, Lccsanandroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 1243
    iget v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->D:I

    if-eq v0, v4, :cond_5

    .line 1244
    iput v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->D:I

    .line 1245
    const/4 v1, 0x1

    .line 1248
    :cond_5
    if-eqz v1, :cond_a

    .line 1249
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->y:Lccsanandroid/content/res/ColorStateList;

    const/4 v1, 0x2

    if-eqz v0, :cond_6

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->z:Lccsanandroid/content/res/ColorStateList;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->A:Lccsanandroid/content/res/ColorStateList;

    if-eqz v4, :cond_6

    .line 1250
    const/4 v0, 0x3

    new-array v4, v0, [I

    iget v5, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->B:I

    aput v5, v4, v3

    iget v3, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->C:I

    aput v3, v4, v2

    iget v2, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->D:I

    aput v2, v4, v1

    iput-object v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->E:[I

    .line 1251
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->F:[F

    goto :goto_1

    .line 1252
    :cond_6
    if-eqz v0, :cond_7

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->A:Lccsanandroid/content/res/ColorStateList;

    if-eqz v4, :cond_7

    .line 1253
    new-array v0, v1, [I

    iget v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->B:I

    aput v4, v0, v3

    iget v3, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->D:I

    aput v3, v0, v2

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->E:[I

    .line 1254
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->F:[F

    goto :goto_1

    .line 1255
    :cond_7
    if-eqz v0, :cond_8

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->z:Lccsanandroid/content/res/ColorStateList;

    if-eqz v0, :cond_8

    .line 1256
    new-array v0, v1, [I

    iget v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->B:I

    aput v4, v0, v3

    iget v3, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->C:I

    aput v3, v0, v2

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->E:[I

    .line 1257
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->F:[F

    goto :goto_1

    .line 1258
    :cond_8
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->z:Lccsanandroid/content/res/ColorStateList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->A:Lccsanandroid/content/res/ColorStateList;

    if-eqz v0, :cond_9

    .line 1259
    new-array v0, v1, [I

    iget v4, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->C:I

    aput v4, v0, v3

    iget v3, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->D:I

    aput v3, v0, v2

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->E:[I

    .line 1260
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->F:[F

    .line 1262
    :cond_9
    :goto_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->invalidate()V

    .line 1264
    :cond_a
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method
