.class final enum Lccsancom/google/common/collect/MultimapBuilder$LinkedListSupplier;
.super Ljava/lang/Enum;
.source "MultimapBuilder.java"

# interfaces
.implements Lccsancom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/MultimapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LinkedListSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/google/common/collect/MultimapBuilder$LinkedListSupplier;",
        ">;",
        "Lccsancom/google/common/base/Supplier<",
        "Ljava/util/List<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/google/common/collect/MultimapBuilder$LinkedListSupplier;

.field public static final enum INSTANCE:Lccsancom/google/common/collect/MultimapBuilder$LinkedListSupplier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 197
    new-instance v0, Lccsancom/google/common/collect/MultimapBuilder$LinkedListSupplier;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/collect/MultimapBuilder$LinkedListSupplier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsancom/google/common/collect/MultimapBuilder$LinkedListSupplier;->INSTANCE:Lccsancom/google/common/collect/MultimapBuilder$LinkedListSupplier;

    .line 196
    const/4 v1, 0x1

    new-array v1, v1, [Lccsancom/google/common/collect/MultimapBuilder$LinkedListSupplier;

    aput-object v0, v1, v2

    sput-object v1, Lccsancom/google/common/collect/MultimapBuilder$LinkedListSupplier;->$VALUES:[Lccsancom/google/common/collect/MultimapBuilder$LinkedListSupplier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 196
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static instance()Lccsancom/google/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/base/Supplier<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .line 202
    sget-object v0, Lccsancom/google/common/collect/MultimapBuilder$LinkedListSupplier;->INSTANCE:Lccsancom/google/common/collect/MultimapBuilder$LinkedListSupplier;

    .line 203
    .local v0, "result":Lccsancom/google/common/base/Supplier;, "Lccsancom/google/common/base/Supplier<Ljava/util/List<TV;>;>;"
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/google/common/collect/MultimapBuilder$LinkedListSupplier;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 196
    const-class v0, Lccsancom/google/common/collect/MultimapBuilder$LinkedListSupplier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/MultimapBuilder$LinkedListSupplier;

    return-object v0
.end method

.method public static values()[Lccsancom/google/common/collect/MultimapBuilder$LinkedListSupplier;
    .locals 1

    .line 196
    sget-object v0, Lccsancom/google/common/collect/MultimapBuilder$LinkedListSupplier;->$VALUES:[Lccsancom/google/common/collect/MultimapBuilder$LinkedListSupplier;

    invoke-virtual {v0}, [Lccsancom/google/common/collect/MultimapBuilder$LinkedListSupplier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/google/common/collect/MultimapBuilder$LinkedListSupplier;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 196
    invoke-virtual {p0}, Lccsancom/google/common/collect/MultimapBuilder$LinkedListSupplier;->get()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 208
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method
