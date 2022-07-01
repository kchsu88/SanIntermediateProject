.class public final enum Lccsankotlin/text/RegexOption;
.super Ljava/lang/Enum;
.source "Regex.kt"

# interfaces
.implements Lccsankotlin/text/FlagEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsankotlin/text/RegexOption;",
        ">;",
        "Lccsankotlin/text/FlagEnum;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u0019\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0006R\u0014\u0010\u0005\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008j\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lccsankotlin/text/RegexOption;",
        "",
        "Lccsankotlin/text/FlagEnum;",
        "value",
        "",
        "mask",
        "(Ljava/lang/String;III)V",
        "getMask",
        "()I",
        "getValue",
        "IGNORE_CASE",
        "MULTILINE",
        "LITERAL",
        "UNIX_LINES",
        "COMMENTS",
        "DOT_MATCHES_ALL",
        "CANON_EQ",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsankotlin/text/RegexOption;

.field public static final enum CANON_EQ:Lccsankotlin/text/RegexOption;

.field public static final enum COMMENTS:Lccsankotlin/text/RegexOption;

.field public static final enum DOT_MATCHES_ALL:Lccsankotlin/text/RegexOption;

.field public static final enum IGNORE_CASE:Lccsankotlin/text/RegexOption;

.field public static final enum LITERAL:Lccsankotlin/text/RegexOption;

.field public static final enum MULTILINE:Lccsankotlin/text/RegexOption;

.field public static final enum UNIX_LINES:Lccsankotlin/text/RegexOption;


# instance fields
.field private final mask:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x7

    new-array v0, v0, [Lccsankotlin/text/RegexOption;

    new-instance v8, Lccsankotlin/text/RegexOption;

    .line 33
    const-string v2, "IGNORE_CASE"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lccsankotlin/text/RegexOption;-><init>(Ljava/lang/String;IIIILccsankotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v8, Lccsankotlin/text/RegexOption;->IGNORE_CASE:Lccsankotlin/text/RegexOption;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    new-instance v1, Lccsankotlin/text/RegexOption;

    .line 39
    const-string v10, "MULTILINE"

    const/4 v11, 0x1

    const/16 v12, 0x8

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lccsankotlin/text/RegexOption;-><init>(Ljava/lang/String;IIIILccsankotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lccsankotlin/text/RegexOption;->MULTILINE:Lccsankotlin/text/RegexOption;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lccsankotlin/text/RegexOption;

    .line 47
    const-string v4, "LITERAL"

    const/4 v5, 0x2

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lccsankotlin/text/RegexOption;-><init>(Ljava/lang/String;IIIILccsankotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lccsankotlin/text/RegexOption;->LITERAL:Lccsankotlin/text/RegexOption;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lccsankotlin/text/RegexOption;

    .line 54
    const-string v4, "UNIX_LINES"

    const/4 v5, 0x3

    const/4 v6, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lccsankotlin/text/RegexOption;-><init>(Ljava/lang/String;IIIILccsankotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lccsankotlin/text/RegexOption;->UNIX_LINES:Lccsankotlin/text/RegexOption;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lccsankotlin/text/RegexOption;

    .line 57
    const-string v4, "COMMENTS"

    const/4 v5, 0x4

    const/4 v6, 0x4

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lccsankotlin/text/RegexOption;-><init>(Ljava/lang/String;IIIILccsankotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lccsankotlin/text/RegexOption;->COMMENTS:Lccsankotlin/text/RegexOption;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lccsankotlin/text/RegexOption;

    .line 60
    const-string v4, "DOT_MATCHES_ALL"

    const/4 v5, 0x5

    const/16 v6, 0x20

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lccsankotlin/text/RegexOption;-><init>(Ljava/lang/String;IIIILccsankotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lccsankotlin/text/RegexOption;->DOT_MATCHES_ALL:Lccsankotlin/text/RegexOption;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lccsankotlin/text/RegexOption;

    .line 63
    const-string v4, "CANON_EQ"

    const/4 v5, 0x6

    const/16 v6, 0x80

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lccsankotlin/text/RegexOption;-><init>(Ljava/lang/String;IIIILccsankotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lccsankotlin/text/RegexOption;->CANON_EQ:Lccsankotlin/text/RegexOption;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lccsankotlin/text/RegexOption;->$VALUES:[Lccsankotlin/text/RegexOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "value"    # I
    .param p4, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lccsankotlin/text/RegexOption;->value:I

    iput p4, p0, Lccsankotlin/text/RegexOption;->mask:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIILccsankotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    .line 29
    move p4, p3

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lccsankotlin/text/RegexOption;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsankotlin/text/RegexOption;
    .locals 1

    const-class v0, Lccsankotlin/text/RegexOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsankotlin/text/RegexOption;

    return-object p0
.end method

.method public static values()[Lccsankotlin/text/RegexOption;
    .locals 1

    sget-object v0, Lccsankotlin/text/RegexOption;->$VALUES:[Lccsankotlin/text/RegexOption;

    invoke-virtual {v0}, [Lccsankotlin/text/RegexOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsankotlin/text/RegexOption;

    return-object v0
.end method


# virtual methods
.method public getMask()I
    .locals 1

    .line 29
    iget v0, p0, Lccsankotlin/text/RegexOption;->mask:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 29
    iget v0, p0, Lccsankotlin/text/RegexOption;->value:I

    return v0
.end method
