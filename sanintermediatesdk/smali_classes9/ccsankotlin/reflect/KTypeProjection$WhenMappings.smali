.class public final synthetic Lccsankotlin/reflect/KTypeProjection$WhenMappings;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lccsankotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lccsankotlin/reflect/KVariance;->values()[Lccsankotlin/reflect/KVariance;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lccsankotlin/reflect/KTypeProjection$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lccsankotlin/reflect/KVariance;->INVARIANT:Lccsankotlin/reflect/KVariance;

    invoke-virtual {v1}, Lccsankotlin/reflect/KVariance;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lccsankotlin/reflect/KVariance;->IN:Lccsankotlin/reflect/KVariance;

    invoke-virtual {v1}, Lccsankotlin/reflect/KVariance;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lccsankotlin/reflect/KVariance;->OUT:Lccsankotlin/reflect/KVariance;

    invoke-virtual {v1}, Lccsankotlin/reflect/KVariance;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    return-void
.end method
