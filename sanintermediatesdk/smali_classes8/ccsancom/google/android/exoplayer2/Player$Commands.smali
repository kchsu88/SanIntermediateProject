.class public final Lccsancom/google/android/exoplayer2/Player$Commands;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Commands"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/Player$Commands$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lccsancom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/android/exoplayer2/Bundleable$Creator<",
            "Lccsancom/google/android/exoplayer2/Player$Commands;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Lccsancom/google/android/exoplayer2/Player$Commands;

.field private static final FIELD_COMMANDS:I


# instance fields
.field private final flags:Lccsancom/google/android/exoplayer2/util/FlagSet;


# direct methods
.method public static synthetic $r8$lambda$9wfIGaCsSPvbzymZpUY6mofx72A(Lccsanandroid/os/Bundle;)Lccsancom/google/android/exoplayer2/Player$Commands;
    .locals 0

    invoke-static {p0}, Lccsancom/google/android/exoplayer2/Player$Commands;->fromBundle(Lccsanandroid/os/Bundle;)Lccsancom/google/android/exoplayer2/Player$Commands;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 842
    new-instance v0, Lccsancom/google/android/exoplayer2/Player$Commands$Builder;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/Player$Commands$Builder;-><init>()V

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/Player$Commands$Builder;->build()Lccsancom/google/android/exoplayer2/Player$Commands;

    move-result-object v0

    sput-object v0, Lccsancom/google/android/exoplayer2/Player$Commands;->EMPTY:Lccsancom/google/android/exoplayer2/Player$Commands;

    .line 914
    sget-object v0, Lccsancom/google/android/exoplayer2/Player$Commands$$ExternalSyntheticLambda0;->INSTANCE:Lccsancom/google/android/exoplayer2/Player$Commands$$ExternalSyntheticLambda0;

    sput-object v0, Lccsancom/google/android/exoplayer2/Player$Commands;->CREATOR:Lccsancom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(Lccsancom/google/android/exoplayer2/util/FlagSet;)V
    .locals 0
    .param p1, "flags"    # Lccsancom/google/android/exoplayer2/util/FlagSet;

    .line 846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 847
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/Player$Commands;->flags:Lccsancom/google/android/exoplayer2/util/FlagSet;

    .line 848
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/android/exoplayer2/util/FlagSet;Lccsancom/google/android/exoplayer2/Player$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/android/exoplayer2/util/FlagSet;
    .param p2, "x1"    # Lccsancom/google/android/exoplayer2/Player$1;

    .line 683
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/Player$Commands;-><init>(Lccsancom/google/android/exoplayer2/util/FlagSet;)V

    return-void
.end method

.method static synthetic access$000(Lccsancom/google/android/exoplayer2/Player$Commands;)Lccsancom/google/android/exoplayer2/util/FlagSet;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/Player$Commands;

    .line 683
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/Player$Commands;->flags:Lccsancom/google/android/exoplayer2/util/FlagSet;

    return-object v0
.end method

.method private static fromBundle(Lccsanandroid/os/Bundle;)Lccsancom/google/android/exoplayer2/Player$Commands;
    .locals 4
    .param p0, "bundle"    # Lccsanandroid/os/Bundle;

    .line 918
    const/4 v0, 0x0

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/Player$Commands;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 919
    .local v0, "commands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 920
    sget-object v1, Lccsancom/google/android/exoplayer2/Player$Commands;->EMPTY:Lccsancom/google/android/exoplayer2/Player$Commands;

    return-object v1

    .line 922
    :cond_0
    new-instance v1, Lccsancom/google/android/exoplayer2/Player$Commands$Builder;

    invoke-direct {v1}, Lccsancom/google/android/exoplayer2/Player$Commands$Builder;-><init>()V

    .line 923
    .local v1, "builder":Lccsancom/google/android/exoplayer2/Player$Commands$Builder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 924
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lccsancom/google/android/exoplayer2/Player$Commands$Builder;->add(I)Lccsancom/google/android/exoplayer2/Player$Commands$Builder;

    .line 923
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 926
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/Player$Commands$Builder;->build()Lccsancom/google/android/exoplayer2/Player$Commands;

    move-result-object v2

    return-object v2
.end method

.method private static keyForField(I)Ljava/lang/String;
    .locals 1
    .param p0, "field"    # I

    .line 930
    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildUpon()Lccsancom/google/android/exoplayer2/Player$Commands$Builder;
    .locals 2

    .line 852
    new-instance v0, Lccsancom/google/android/exoplayer2/Player$Commands$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsancom/google/android/exoplayer2/Player$Commands$Builder;-><init>(Lccsancom/google/android/exoplayer2/Player$Commands;Lccsancom/google/android/exoplayer2/Player$1;)V

    return-object v0
.end method

.method public contains(I)Z
    .locals 1
    .param p1, "command"    # I

    .line 857
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/Player$Commands;->flags:Lccsancom/google/android/exoplayer2/util/FlagSet;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/util/FlagSet;->contains(I)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 878
    if-ne p0, p1, :cond_0

    .line 879
    const/4 v0, 0x1

    return v0

    .line 881
    :cond_0
    instance-of v0, p1, Lccsancom/google/android/exoplayer2/Player$Commands;

    if-nez v0, :cond_1

    .line 882
    const/4 v0, 0x0

    return v0

    .line 884
    :cond_1
    move-object v0, p1

    check-cast v0, Lccsancom/google/android/exoplayer2/Player$Commands;

    .line 885
    .local v0, "commands":Lccsancom/google/android/exoplayer2/Player$Commands;
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/Player$Commands;->flags:Lccsancom/google/android/exoplayer2/util/FlagSet;

    iget-object v2, v0, Lccsancom/google/android/exoplayer2/Player$Commands;->flags:Lccsancom/google/android/exoplayer2/util/FlagSet;

    invoke-virtual {v1, v2}, Lccsancom/google/android/exoplayer2/util/FlagSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public get(I)I
    .locals 1
    .param p1, "index"    # I

    .line 873
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/Player$Commands;->flags:Lccsancom/google/android/exoplayer2/util/FlagSet;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/util/FlagSet;->get(I)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 890
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/Player$Commands;->flags:Lccsancom/google/android/exoplayer2/util/FlagSet;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/util/FlagSet;->hashCode()I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 862
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/Player$Commands;->flags:Lccsancom/google/android/exoplayer2/util/FlagSet;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result v0

    return v0
.end method

.method public toBundle()Lccsanandroid/os/Bundle;
    .locals 4

    .line 904
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 905
    .local v0, "bundle":Lccsanandroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 906
    .local v1, "commandsBundle":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lccsancom/google/android/exoplayer2/Player$Commands;->flags:Lccsancom/google/android/exoplayer2/util/FlagSet;

    invoke-virtual {v3}, Lccsancom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 907
    iget-object v3, p0, Lccsancom/google/android/exoplayer2/Player$Commands;->flags:Lccsancom/google/android/exoplayer2/util/FlagSet;

    invoke-virtual {v3, v2}, Lccsancom/google/android/exoplayer2/util/FlagSet;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 909
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Lccsancom/google/android/exoplayer2/Player$Commands;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 910
    return-object v0
.end method
