.class final enum Lccsancom/google/common/primitives/Shorts$LexicographicalComparator;
.super Ljava/lang/Enum;
.source "Shorts.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/primitives/Shorts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LexicographicalComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/google/common/primitives/Shorts$LexicographicalComparator;",
        ">;",
        "Ljava/util/Comparator<",
        "[S>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/google/common/primitives/Shorts$LexicographicalComparator;

.field public static final enum INSTANCE:Lccsancom/google/common/primitives/Shorts$LexicographicalComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 436
    new-instance v0, Lccsancom/google/common/primitives/Shorts$LexicographicalComparator;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/primitives/Shorts$LexicographicalComparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsancom/google/common/primitives/Shorts$LexicographicalComparator;->INSTANCE:Lccsancom/google/common/primitives/Shorts$LexicographicalComparator;

    .line 435
    const/4 v1, 0x1

    new-array v1, v1, [Lccsancom/google/common/primitives/Shorts$LexicographicalComparator;

    aput-object v0, v1, v2

    sput-object v1, Lccsancom/google/common/primitives/Shorts$LexicographicalComparator;->$VALUES:[Lccsancom/google/common/primitives/Shorts$LexicographicalComparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 435
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/google/common/primitives/Shorts$LexicographicalComparator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 435
    const-class v0, Lccsancom/google/common/primitives/Shorts$LexicographicalComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/primitives/Shorts$LexicographicalComparator;

    return-object v0
.end method

.method public static values()[Lccsancom/google/common/primitives/Shorts$LexicographicalComparator;
    .locals 1

    .line 435
    sget-object v0, Lccsancom/google/common/primitives/Shorts$LexicographicalComparator;->$VALUES:[Lccsancom/google/common/primitives/Shorts$LexicographicalComparator;

    invoke-virtual {v0}, [Lccsancom/google/common/primitives/Shorts$LexicographicalComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/google/common/primitives/Shorts$LexicographicalComparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 435
    check-cast p1, [S

    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/primitives/Shorts$LexicographicalComparator;->compare([S[S)I

    move-result p1

    return p1
.end method

.method public compare([S[S)I
    .locals 4
    .param p1, "left"    # [S
    .param p2, "right"    # [S

    .line 440
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 441
    .local v0, "minLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 442
    aget-short v2, p1, v1

    aget-short v3, p2, v1

    invoke-static {v2, v3}, Lccsancom/google/common/primitives/Shorts;->compare(SS)I

    move-result v2

    .line 443
    .local v2, "result":I
    if-eqz v2, :cond_0

    .line 444
    return v2

    .line 441
    .end local v2    # "result":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 447
    .end local v1    # "i":I
    :cond_1
    array-length v1, p1

    array-length v2, p2

    sub-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 452
    const-string v0, "Shorts.lexicographicalComparator()"

    return-object v0
.end method
