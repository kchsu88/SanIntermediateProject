.class final enum Lccsancom/google/common/collect/AbstractIterator$State;
.super Ljava/lang/Enum;
.source "AbstractIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/AbstractIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/google/common/collect/AbstractIterator$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/google/common/collect/AbstractIterator$State;

.field public static final enum DONE:Lccsancom/google/common/collect/AbstractIterator$State;

.field public static final enum FAILED:Lccsancom/google/common/collect/AbstractIterator$State;

.field public static final enum NOT_READY:Lccsancom/google/common/collect/AbstractIterator$State;

.field public static final enum READY:Lccsancom/google/common/collect/AbstractIterator$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 72
    new-instance v0, Lccsancom/google/common/collect/AbstractIterator$State;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/collect/AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsancom/google/common/collect/AbstractIterator$State;->READY:Lccsancom/google/common/collect/AbstractIterator$State;

    .line 75
    new-instance v1, Lccsancom/google/common/collect/AbstractIterator$State;

    const-string v3, "NOT_READY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsancom/google/common/collect/AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsancom/google/common/collect/AbstractIterator$State;->NOT_READY:Lccsancom/google/common/collect/AbstractIterator$State;

    .line 78
    new-instance v3, Lccsancom/google/common/collect/AbstractIterator$State;

    const-string v5, "DONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lccsancom/google/common/collect/AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lccsancom/google/common/collect/AbstractIterator$State;->DONE:Lccsancom/google/common/collect/AbstractIterator$State;

    .line 81
    new-instance v5, Lccsancom/google/common/collect/AbstractIterator$State;

    const-string v7, "FAILED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lccsancom/google/common/collect/AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lccsancom/google/common/collect/AbstractIterator$State;->FAILED:Lccsancom/google/common/collect/AbstractIterator$State;

    .line 70
    const/4 v7, 0x4

    new-array v7, v7, [Lccsancom/google/common/collect/AbstractIterator$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lccsancom/google/common/collect/AbstractIterator$State;->$VALUES:[Lccsancom/google/common/collect/AbstractIterator$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/google/common/collect/AbstractIterator$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 70
    const-class v0, Lccsancom/google/common/collect/AbstractIterator$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/AbstractIterator$State;

    return-object v0
.end method

.method public static values()[Lccsancom/google/common/collect/AbstractIterator$State;
    .locals 1

    .line 70
    sget-object v0, Lccsancom/google/common/collect/AbstractIterator$State;->$VALUES:[Lccsancom/google/common/collect/AbstractIterator$State;

    invoke-virtual {v0}, [Lccsancom/google/common/collect/AbstractIterator$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/google/common/collect/AbstractIterator$State;

    return-object v0
.end method
