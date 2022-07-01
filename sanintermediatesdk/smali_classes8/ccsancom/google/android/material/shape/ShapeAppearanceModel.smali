.class public Lccsancom/google/android/material/shape/ShapeAppearanceModel;
.super Ljava/lang/Object;
.source "ShapeAppearanceModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;,
        Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    }
.end annotation


# static fields
.field public static final PILL:Lccsancom/google/android/material/shape/CornerSize;


# instance fields
.field bottomEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

.field bottomLeftCorner:Lccsancom/google/android/material/shape/CornerTreatment;

.field bottomLeftCornerSize:Lccsancom/google/android/material/shape/CornerSize;

.field bottomRightCorner:Lccsancom/google/android/material/shape/CornerTreatment;

.field bottomRightCornerSize:Lccsancom/google/android/material/shape/CornerSize;

.field leftEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

.field rightEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

.field topEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

.field topLeftCorner:Lccsancom/google/android/material/shape/CornerTreatment;

.field topLeftCornerSize:Lccsancom/google/android/material/shape/CornerSize;

.field topRightCorner:Lccsancom/google/android/material/shape/CornerTreatment;

.field topRightCornerSize:Lccsancom/google/android/material/shape/CornerSize;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 565
    new-instance v0, Lccsancom/google/android/material/shape/RelativeCornerSize;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lccsancom/google/android/material/shape/RelativeCornerSize;-><init>(F)V

    sput-object v0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->PILL:Lccsancom/google/android/material/shape/CornerSize;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    invoke-static {}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lccsancom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 600
    invoke-static {}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lccsancom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 601
    invoke-static {}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lccsancom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 602
    invoke-static {}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lccsancom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 604
    new-instance v0, Lccsancom/google/android/material/shape/AbsoluteCornerSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    .line 605
    new-instance v0, Lccsancom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lccsancom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    .line 606
    new-instance v0, Lccsancom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lccsancom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    .line 607
    new-instance v0, Lccsancom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lccsancom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    .line 609
    invoke-static {}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lccsancom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 610
    invoke-static {}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lccsancom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 611
    invoke-static {}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lccsancom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 612
    invoke-static {}, Lccsancom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lccsancom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 613
    return-void
.end method

.method private constructor <init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;)V
    .locals 1
    .param p1, "builder"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    invoke-static {p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$100(Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lccsancom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 582
    invoke-static {p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$200(Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lccsancom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 583
    invoke-static {p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$300(Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lccsancom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 584
    invoke-static {p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$400(Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lccsancom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    .line 586
    invoke-static {p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$500(Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    .line 587
    invoke-static {p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$600(Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    .line 588
    invoke-static {p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$700(Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    .line 589
    invoke-static {p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$800(Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    .line 591
    invoke-static {p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$900(Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lccsancom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 592
    invoke-static {p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$1000(Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lccsancom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 593
    invoke-static {p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$1100(Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lccsancom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 594
    invoke-static {p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$1200(Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lccsancom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 595
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;Lccsancom/google/android/material/shape/ShapeAppearanceModel$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .param p2, "x1"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel$1;

    .line 41
    invoke-direct {p0, p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;-><init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;)V

    return-void
.end method

.method public static builder()Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1

    .line 435
    new-instance v0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    invoke-direct {v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;-><init>()V

    return-object v0
.end method

.method public static builder(Lccsanandroid/content/Context;II)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "shapeAppearanceResId"    # I
    .param p2, "shapeAppearanceOverlayResId"    # I

    .line 480
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->builder(Lccsanandroid/content/Context;III)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static builder(Lccsanandroid/content/Context;III)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "shapeAppearanceResId"    # I
    .param p2, "shapeAppearanceOverlayResId"    # I
    .param p3, "defaultCornerSize"    # I

    .line 489
    new-instance v0, Lccsancom/google/android/material/shape/AbsoluteCornerSize;

    int-to-float v1, p3

    invoke-direct {v0, v1}, Lccsancom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    invoke-static {p0, p1, p2, v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->builder(Lccsanandroid/content/Context;IILccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static builder(Lccsanandroid/content/Context;IILccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 12
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "shapeAppearanceResId"    # I
    .param p2, "shapeAppearanceOverlayResId"    # I
    .param p3, "defaultCornerSize"    # Lccsancom/google/android/material/shape/CornerSize;

    .line 503
    if-eqz p2, :cond_0

    .line 504
    new-instance v0, Lccsanandroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Lccsanandroid/view/ContextThemeWrapper;-><init>(Lccsanandroid/content/Context;I)V

    move-object p0, v0

    .line 505
    move p1, p2

    .line 508
    :cond_0
    sget-object v0, Lccsancom/google/android/material/R$styleable;->ShapeAppearance:[I

    .line 509
    invoke-virtual {p0, p1, v0}, Lccsanandroid/content/Context;->obtainStyledAttributes(I[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 512
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    :try_start_0
    sget v1, Lccsancom/google/android/material/R$styleable;->ShapeAppearance_cornerFamily:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 513
    .local v1, "cornerFamily":I
    sget v2, Lccsancom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyTopLeft:I

    .line 514
    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 515
    .local v2, "cornerFamilyTopLeft":I
    sget v3, Lccsancom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyTopRight:I

    .line 516
    invoke-virtual {v0, v3, v1}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 517
    .local v3, "cornerFamilyTopRight":I
    sget v4, Lccsancom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyBottomRight:I

    .line 518
    invoke-virtual {v0, v4, v1}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 519
    .local v4, "cornerFamilyBottomRight":I
    sget v5, Lccsancom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyBottomLeft:I

    .line 520
    invoke-virtual {v0, v5, v1}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 522
    .local v5, "cornerFamilyBottomLeft":I
    sget v6, Lccsancom/google/android/material/R$styleable;->ShapeAppearance_cornerSize:I

    .line 523
    invoke-static {v0, v6, p3}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getCornerSize(Lccsanandroid/content/res/TypedArray;ILccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v6

    .line 525
    .local v6, "cornerSize":Lccsancom/google/android/material/shape/CornerSize;
    sget v7, Lccsancom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeTopLeft:I

    .line 526
    invoke-static {v0, v7, v6}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getCornerSize(Lccsanandroid/content/res/TypedArray;ILccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v7

    .line 527
    .local v7, "cornerSizeTopLeft":Lccsancom/google/android/material/shape/CornerSize;
    sget v8, Lccsancom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeTopRight:I

    .line 528
    invoke-static {v0, v8, v6}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getCornerSize(Lccsanandroid/content/res/TypedArray;ILccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v8

    .line 529
    .local v8, "cornerSizeTopRight":Lccsancom/google/android/material/shape/CornerSize;
    sget v9, Lccsancom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeBottomRight:I

    .line 530
    invoke-static {v0, v9, v6}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getCornerSize(Lccsanandroid/content/res/TypedArray;ILccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v9

    .line 531
    .local v9, "cornerSizeBottomRight":Lccsancom/google/android/material/shape/CornerSize;
    sget v10, Lccsancom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeBottomLeft:I

    .line 532
    invoke-static {v0, v10, v6}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getCornerSize(Lccsanandroid/content/res/TypedArray;ILccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v10

    .line 534
    .local v10, "cornerSizeBottomLeft":Lccsancom/google/android/material/shape/CornerSize;
    new-instance v11, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    invoke-direct {v11}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;-><init>()V

    .line 535
    invoke-virtual {v11, v2, v7}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCorner(ILccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v11

    .line 536
    invoke-virtual {v11, v3, v8}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCorner(ILccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v11

    .line 537
    invoke-virtual {v11, v4, v9}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCorner(ILccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v11

    .line 538
    invoke-virtual {v11, v5, v10}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCorner(ILccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 534
    return-object v11

    .line 540
    .end local v1    # "cornerFamily":I
    .end local v2    # "cornerFamilyTopLeft":I
    .end local v3    # "cornerFamilyTopRight":I
    .end local v4    # "cornerFamilyBottomRight":I
    .end local v5    # "cornerFamilyBottomLeft":I
    .end local v6    # "cornerSize":Lccsancom/google/android/material/shape/CornerSize;
    .end local v7    # "cornerSizeTopLeft":Lccsancom/google/android/material/shape/CornerSize;
    .end local v8    # "cornerSizeTopRight":Lccsancom/google/android/material/shape/CornerSize;
    .end local v9    # "cornerSizeBottomRight":Lccsancom/google/android/material/shape/CornerSize;
    .end local v10    # "cornerSizeBottomLeft":Lccsancom/google/android/material/shape/CornerSize;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 541
    throw v1
.end method

.method public static builder(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 444
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->builder(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;III)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static builder(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;III)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I
    .param p4, "defaultCornerSize"    # I

    .line 454
    new-instance v0, Lccsancom/google/android/material/shape/AbsoluteCornerSize;

    int-to-float v1, p4

    invoke-direct {v0, v1}, Lccsancom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    invoke-static {p0, p1, p2, p3, v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->builder(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;IILccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static builder(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;IILccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I
    .param p4, "defaultCornerSize"    # Lccsancom/google/android/material/shape/CornerSize;

    .line 465
    sget-object v0, Lccsancom/google/android/material/R$styleable;->MaterialShape:[I

    .line 466
    invoke-virtual {p0, p1, v0, p2, p3}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[III)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 468
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    sget v1, Lccsancom/google/android/material/R$styleable;->MaterialShape_shapeAppearance:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 469
    .local v1, "shapeAppearanceResId":I
    sget v3, Lccsancom/google/android/material/R$styleable;->MaterialShape_shapeAppearanceOverlay:I

    .line 470
    invoke-virtual {v0, v3, v2}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 471
    .local v2, "shapeAppearanceOverlayResId":I
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 472
    invoke-static {p0, v1, v2, p4}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->builder(Lccsanandroid/content/Context;IILccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v3

    return-object v3
.end method

.method private static getCornerSize(Lccsanandroid/content/res/TypedArray;ILccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/CornerSize;
    .locals 4
    .param p0, "a"    # Lccsanandroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "defaultValue"    # Lccsancom/google/android/material/shape/CornerSize;

    .line 547
    invoke-virtual {p0, p1}, Lccsanandroid/content/res/TypedArray;->peekValue(I)Lccsanandroid/util/TypedValue;

    move-result-object v0

    .line 548
    .local v0, "value":Lccsanandroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 549
    return-object p2

    .line 552
    :cond_0
    iget v1, v0, Lccsanandroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 555
    new-instance v1, Lccsancom/google/android/material/shape/AbsoluteCornerSize;

    iget v2, v0, Lccsanandroid/util/TypedValue;->data:I

    .line 556
    invoke-virtual {p0}, Lccsanandroid/content/res/TypedArray;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v2, v3}, Lccsanandroid/util/TypedValue;->complexToDimensionPixelSize(ILccsanandroid/util/DisplayMetrics;)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v2}, Lccsancom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 555
    return-object v1

    .line 557
    :cond_1
    iget v1, v0, Lccsanandroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 558
    new-instance v1, Lccsancom/google/android/material/shape/RelativeCornerSize;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v2}, Lccsanandroid/util/TypedValue;->getFraction(FF)F

    move-result v2

    invoke-direct {v1, v2}, Lccsancom/google/android/material/shape/RelativeCornerSize;-><init>(F)V

    return-object v1

    .line 560
    :cond_2
    return-object p2
.end method


# virtual methods
.method public getBottomEdge()Lccsancom/google/android/material/shape/EdgeTreatment;
    .locals 1

    .line 732
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    return-object v0
.end method

.method public getBottomLeftCorner()Lccsancom/google/android/material/shape/CornerTreatment;
    .locals 1

    .line 652
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    return-object v0
.end method

.method public getBottomLeftCornerSize()Lccsancom/google/android/material/shape/CornerSize;
    .locals 1

    .line 692
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    return-object v0
.end method

.method public getBottomRightCorner()Lccsancom/google/android/material/shape/CornerTreatment;
    .locals 1

    .line 642
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    return-object v0
.end method

.method public getBottomRightCornerSize()Lccsancom/google/android/material/shape/CornerSize;
    .locals 1

    .line 682
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    return-object v0
.end method

.method public getLeftEdge()Lccsancom/google/android/material/shape/EdgeTreatment;
    .locals 1

    .line 702
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    return-object v0
.end method

.method public getRightEdge()Lccsancom/google/android/material/shape/EdgeTreatment;
    .locals 1

    .line 722
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    return-object v0
.end method

.method public getTopEdge()Lccsancom/google/android/material/shape/EdgeTreatment;
    .locals 1

    .line 712
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    return-object v0
.end method

.method public getTopLeftCorner()Lccsancom/google/android/material/shape/CornerTreatment;
    .locals 1

    .line 622
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    return-object v0
.end method

.method public getTopLeftCornerSize()Lccsancom/google/android/material/shape/CornerSize;
    .locals 1

    .line 662
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    return-object v0
.end method

.method public getTopRightCorner()Lccsancom/google/android/material/shape/CornerTreatment;
    .locals 1

    .line 632
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    return-object v0
.end method

.method public getTopRightCornerSize()Lccsancom/google/android/material/shape/CornerSize;
    .locals 1

    .line 672
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    return-object v0
.end method

.method public isRoundRect(Lccsanandroid/graphics/RectF;)Z
    .locals 6
    .param p1, "bounds"    # Lccsanandroid/graphics/RectF;

    .line 791
    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 792
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lccsancom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 793
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lccsancom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 794
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lccsancom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lccsancom/google/android/material/shape/EdgeTreatment;

    .line 795
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lccsancom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 797
    .local v0, "hasDefaultEdges":Z
    :goto_0
    iget-object v3, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    invoke-interface {v3, p1}, Lccsancom/google/android/material/shape/CornerSize;->getCornerSize(Lccsanandroid/graphics/RectF;)F

    move-result v3

    .line 799
    .local v3, "cornerSize":F
    iget-object v4, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    .line 800
    invoke-interface {v4, p1}, Lccsancom/google/android/material/shape/CornerSize;->getCornerSize(Lccsanandroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    iget-object v4, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    .line 801
    invoke-interface {v4, p1}, Lccsancom/google/android/material/shape/CornerSize;->getCornerSize(Lccsanandroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    iget-object v4, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lccsancom/google/android/material/shape/CornerSize;

    .line 802
    invoke-interface {v4, p1}, Lccsancom/google/android/material/shape/CornerSize;->getCornerSize(Lccsanandroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 804
    .local v4, "cornersHaveSameSize":Z
    :goto_1
    iget-object v5, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    instance-of v5, v5, Lccsancom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    instance-of v5, v5, Lccsancom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    instance-of v5, v5, Lccsancom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lccsancom/google/android/material/shape/CornerTreatment;

    instance-of v5, v5, Lccsancom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 810
    .local v5, "hasRoundedCorners":Z
    :goto_2
    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    return v1
.end method

.method public toBuilder()Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1

    .line 738
    new-instance v0, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;-><init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    return-object v0
.end method

.method public withCornerSize(F)Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1
    .param p1, "cornerSize"    # F

    .line 747
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCornerSizes(F)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method public withCornerSize(Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1
    .param p1, "cornerSize"    # Lccsancom/google/android/material/shape/CornerSize;

    .line 752
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCornerSizes(Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method public withTransformedCornerSizes(Lccsancom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;)Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .locals 2
    .param p1, "op"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;

    .line 775
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 776
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-interface {p1, v1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;->apply(Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 777
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-interface {p1, v1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;->apply(Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 778
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-interface {p1, v1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;->apply(Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 779
    invoke-virtual {p0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-interface {p1, v1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;->apply(Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 780
    invoke-virtual {v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    .line 775
    return-object v0
.end method
