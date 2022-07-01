.class public final synthetic Lccsankotlin/collections/AbstractIterator$WhenMappings;
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

    invoke-static {}, Lccsankotlin/collections/State;->values()[Lccsankotlin/collections/State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lccsankotlin/collections/AbstractIterator$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lccsankotlin/collections/State;->Done:Lccsankotlin/collections/State;

    invoke-virtual {v1}, Lccsankotlin/collections/State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lccsankotlin/collections/State;->Ready:Lccsankotlin/collections/State;

    invoke-virtual {v1}, Lccsankotlin/collections/State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
