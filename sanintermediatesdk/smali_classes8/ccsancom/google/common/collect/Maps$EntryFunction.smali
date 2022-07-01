.class abstract enum Lccsancom/google/common/collect/Maps$EntryFunction;
.super Ljava/lang/Enum;
.source "Maps.java"

# interfaces
.implements Lccsancom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "EntryFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/google/common/collect/Maps$EntryFunction;",
        ">;",
        "Lccsancom/google/common/base/Function<",
        "Ljava/util/Map$Entry<",
        "**>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/google/common/collect/Maps$EntryFunction;

.field public static final enum KEY:Lccsancom/google/common/collect/Maps$EntryFunction;

.field public static final enum VALUE:Lccsancom/google/common/collect/Maps$EntryFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 86
    new-instance v0, Lccsancom/google/common/collect/Maps$EntryFunction$1;

    const-string v1, "KEY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/collect/Maps$EntryFunction$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsancom/google/common/collect/Maps$EntryFunction;->KEY:Lccsancom/google/common/collect/Maps$EntryFunction;

    .line 93
    new-instance v1, Lccsancom/google/common/collect/Maps$EntryFunction$2;

    const-string v3, "VALUE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsancom/google/common/collect/Maps$EntryFunction$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsancom/google/common/collect/Maps$EntryFunction;->VALUE:Lccsancom/google/common/collect/Maps$EntryFunction;

    .line 85
    const/4 v3, 0x2

    new-array v3, v3, [Lccsancom/google/common/collect/Maps$EntryFunction;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lccsancom/google/common/collect/Maps$EntryFunction;->$VALUES:[Lccsancom/google/common/collect/Maps$EntryFunction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILccsancom/google/common/collect/Maps$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lccsancom/google/common/collect/Maps$1;

    .line 85
    invoke-direct {p0, p1, p2}, Lccsancom/google/common/collect/Maps$EntryFunction;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/google/common/collect/Maps$EntryFunction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 85
    const-class v0, Lccsancom/google/common/collect/Maps$EntryFunction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/Maps$EntryFunction;

    return-object v0
.end method

.method public static values()[Lccsancom/google/common/collect/Maps$EntryFunction;
    .locals 1

    .line 85
    sget-object v0, Lccsancom/google/common/collect/Maps$EntryFunction;->$VALUES:[Lccsancom/google/common/collect/Maps$EntryFunction;

    invoke-virtual {v0}, [Lccsancom/google/common/collect/Maps$EntryFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/google/common/collect/Maps$EntryFunction;

    return-object v0
.end method
