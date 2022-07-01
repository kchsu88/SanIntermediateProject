.class public final Lccsanandroidx/core/text/TextDirectionHeuristicsCompat;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;,
        Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$AnyStrong;,
        Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;,
        Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;,
        Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;,
        Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;
    }
.end annotation


# static fields
.field public static final ANYRTL_LTR:Lccsanandroidx/core/text/TextDirectionHeuristicCompat;

.field public static final FIRSTSTRONG_LTR:Lccsanandroidx/core/text/TextDirectionHeuristicCompat;

.field public static final FIRSTSTRONG_RTL:Lccsanandroidx/core/text/TextDirectionHeuristicCompat;

.field public static final LOCALE:Lccsanandroidx/core/text/TextDirectionHeuristicCompat;

.field public static final LTR:Lccsanandroidx/core/text/TextDirectionHeuristicCompat;

.field public static final RTL:Lccsanandroidx/core/text/TextDirectionHeuristicCompat;

.field private static final STATE_FALSE:I = 0x1

.field private static final STATE_TRUE:I = 0x0

.field private static final STATE_UNKNOWN:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    new-instance v0, Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V

    sput-object v0, Lccsanandroidx/core/text/TextDirectionHeuristicsCompat;->LTR:Lccsanandroidx/core/text/TextDirectionHeuristicCompat;

    .line 39
    new-instance v0, Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V

    sput-object v0, Lccsanandroidx/core/text/TextDirectionHeuristicsCompat;->RTL:Lccsanandroidx/core/text/TextDirectionHeuristicCompat;

    .line 47
    new-instance v0, Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    sget-object v1, Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;->INSTANCE:Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;

    invoke-direct {v0, v1, v2}, Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V

    sput-object v0, Lccsanandroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Lccsanandroidx/core/text/TextDirectionHeuristicCompat;

    .line 55
    new-instance v0, Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    sget-object v1, Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;->INSTANCE:Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;

    invoke-direct {v0, v1, v3}, Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V

    sput-object v0, Lccsanandroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Lccsanandroidx/core/text/TextDirectionHeuristicCompat;

    .line 62
    new-instance v0, Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    sget-object v1, Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$AnyStrong;->INSTANCE_RTL:Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$AnyStrong;

    invoke-direct {v0, v1, v2}, Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V

    sput-object v0, Lccsanandroidx/core/text/TextDirectionHeuristicsCompat;->ANYRTL_LTR:Lccsanandroidx/core/text/TextDirectionHeuristicCompat;

    .line 68
    sget-object v0, Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;->INSTANCE:Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;

    sput-object v0, Lccsanandroidx/core/text/TextDirectionHeuristicsCompat;->LOCALE:Lccsanandroidx/core/text/TextDirectionHeuristicCompat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isRtlText(I)I
    .locals 1
    .param p0, "directionality"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "directionality"
        }
    .end annotation

    .line 79
    packed-switch p0, :pswitch_data_0

    .line 86
    const/4 v0, 0x2

    return v0

    .line 84
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 81
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static isRtlTextOrFormat(I)I
    .locals 1
    .param p0, "directionality"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "directionality"
        }
    .end annotation

    .line 91
    sparse-switch p0, :sswitch_data_0

    .line 102
    const/4 v0, 0x2

    return v0

    .line 100
    :sswitch_0
    const/4 v0, 0x0

    return v0

    .line 95
    :sswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0xe -> :sswitch_1
        0xf -> :sswitch_1
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
    .end sparse-switch
.end method
