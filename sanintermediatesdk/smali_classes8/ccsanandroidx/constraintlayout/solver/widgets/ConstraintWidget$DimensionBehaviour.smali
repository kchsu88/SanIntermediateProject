.class public final enum Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
.super Ljava/lang/Enum;
.source "ConstraintWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DimensionBehaviour"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

.field public static final enum FIXED:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

.field public static final enum MATCH_CONSTRAINT:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

.field public static final enum MATCH_PARENT:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

.field public static final enum WRAP_CONTENT:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 194
    new-instance v0, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const-string v1, "FIXED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    new-instance v1, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const-string v3, "WRAP_CONTENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    new-instance v3, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const-string v5, "MATCH_CONSTRAINT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    new-instance v5, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const-string v7, "MATCH_PARENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 193
    const/4 v7, 0x4

    new-array v7, v7, [Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->$VALUES:[Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 193
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 193
    const-class v0, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    return-object v0
.end method

.method public static values()[Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 1

    .line 193
    sget-object v0, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->$VALUES:[Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v0}, [Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    return-object v0
.end method
