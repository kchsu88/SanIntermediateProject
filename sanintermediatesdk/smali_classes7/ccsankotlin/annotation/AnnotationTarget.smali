.class public final enum Lccsankotlin/annotation/AnnotationTarget;
.super Ljava/lang/Enum;
.source "Annotations.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsankotlin/annotation/AnnotationTarget;",
        ">;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0011\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lccsankotlin/annotation/AnnotationTarget;",
        "",
        "(Ljava/lang/String;I)V",
        "CLASS",
        "ANNOTATION_CLASS",
        "TYPE_PARAMETER",
        "PROPERTY",
        "FIELD",
        "LOCAL_VARIABLE",
        "VALUE_PARAMETER",
        "CONSTRUCTOR",
        "FUNCTION",
        "PROPERTY_GETTER",
        "PROPERTY_SETTER",
        "TYPE",
        "EXPRESSION",
        "FILE",
        "TYPEALIAS",
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
.field private static final synthetic $VALUES:[Lccsankotlin/annotation/AnnotationTarget;

.field public static final enum ANNOTATION_CLASS:Lccsankotlin/annotation/AnnotationTarget;

.field public static final enum CLASS:Lccsankotlin/annotation/AnnotationTarget;

.field public static final enum CONSTRUCTOR:Lccsankotlin/annotation/AnnotationTarget;

.field public static final enum EXPRESSION:Lccsankotlin/annotation/AnnotationTarget;

.field public static final enum FIELD:Lccsankotlin/annotation/AnnotationTarget;

.field public static final enum FILE:Lccsankotlin/annotation/AnnotationTarget;

.field public static final enum FUNCTION:Lccsankotlin/annotation/AnnotationTarget;

.field public static final enum LOCAL_VARIABLE:Lccsankotlin/annotation/AnnotationTarget;

.field public static final enum PROPERTY:Lccsankotlin/annotation/AnnotationTarget;

.field public static final enum PROPERTY_GETTER:Lccsankotlin/annotation/AnnotationTarget;

.field public static final enum PROPERTY_SETTER:Lccsankotlin/annotation/AnnotationTarget;

.field public static final enum TYPE:Lccsankotlin/annotation/AnnotationTarget;

.field public static final enum TYPEALIAS:Lccsankotlin/annotation/AnnotationTarget;

.field public static final enum TYPE_PARAMETER:Lccsankotlin/annotation/AnnotationTarget;

.field public static final enum VALUE_PARAMETER:Lccsankotlin/annotation/AnnotationTarget;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xf

    new-array v0, v0, [Lccsankotlin/annotation/AnnotationTarget;

    new-instance v1, Lccsankotlin/annotation/AnnotationTarget;

    const-string v2, "CLASS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lccsankotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsankotlin/annotation/AnnotationTarget;->CLASS:Lccsankotlin/annotation/AnnotationTarget;

    aput-object v1, v0, v3

    new-instance v1, Lccsankotlin/annotation/AnnotationTarget;

    const-string v2, "ANNOTATION_CLASS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lccsankotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsankotlin/annotation/AnnotationTarget;->ANNOTATION_CLASS:Lccsankotlin/annotation/AnnotationTarget;

    aput-object v1, v0, v3

    new-instance v1, Lccsankotlin/annotation/AnnotationTarget;

    const-string v2, "TYPE_PARAMETER"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lccsankotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsankotlin/annotation/AnnotationTarget;->TYPE_PARAMETER:Lccsankotlin/annotation/AnnotationTarget;

    aput-object v1, v0, v3

    new-instance v1, Lccsankotlin/annotation/AnnotationTarget;

    const-string v2, "PROPERTY"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lccsankotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsankotlin/annotation/AnnotationTarget;->PROPERTY:Lccsankotlin/annotation/AnnotationTarget;

    aput-object v1, v0, v3

    new-instance v1, Lccsankotlin/annotation/AnnotationTarget;

    const-string v2, "FIELD"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lccsankotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsankotlin/annotation/AnnotationTarget;->FIELD:Lccsankotlin/annotation/AnnotationTarget;

    aput-object v1, v0, v3

    new-instance v1, Lccsankotlin/annotation/AnnotationTarget;

    const-string v2, "LOCAL_VARIABLE"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lccsankotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsankotlin/annotation/AnnotationTarget;->LOCAL_VARIABLE:Lccsankotlin/annotation/AnnotationTarget;

    aput-object v1, v0, v3

    new-instance v1, Lccsankotlin/annotation/AnnotationTarget;

    const-string v2, "VALUE_PARAMETER"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lccsankotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsankotlin/annotation/AnnotationTarget;->VALUE_PARAMETER:Lccsankotlin/annotation/AnnotationTarget;

    aput-object v1, v0, v3

    new-instance v1, Lccsankotlin/annotation/AnnotationTarget;

    const-string v2, "CONSTRUCTOR"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lccsankotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsankotlin/annotation/AnnotationTarget;->CONSTRUCTOR:Lccsankotlin/annotation/AnnotationTarget;

    aput-object v1, v0, v3

    new-instance v1, Lccsankotlin/annotation/AnnotationTarget;

    const-string v2, "FUNCTION"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lccsankotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsankotlin/annotation/AnnotationTarget;->FUNCTION:Lccsankotlin/annotation/AnnotationTarget;

    aput-object v1, v0, v3

    new-instance v1, Lccsankotlin/annotation/AnnotationTarget;

    const-string v2, "PROPERTY_GETTER"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lccsankotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsankotlin/annotation/AnnotationTarget;->PROPERTY_GETTER:Lccsankotlin/annotation/AnnotationTarget;

    aput-object v1, v0, v3

    new-instance v1, Lccsankotlin/annotation/AnnotationTarget;

    const-string v2, "PROPERTY_SETTER"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lccsankotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsankotlin/annotation/AnnotationTarget;->PROPERTY_SETTER:Lccsankotlin/annotation/AnnotationTarget;

    aput-object v1, v0, v3

    new-instance v1, Lccsankotlin/annotation/AnnotationTarget;

    const-string v2, "TYPE"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lccsankotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsankotlin/annotation/AnnotationTarget;->TYPE:Lccsankotlin/annotation/AnnotationTarget;

    aput-object v1, v0, v3

    new-instance v1, Lccsankotlin/annotation/AnnotationTarget;

    const-string v2, "EXPRESSION"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lccsankotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsankotlin/annotation/AnnotationTarget;->EXPRESSION:Lccsankotlin/annotation/AnnotationTarget;

    aput-object v1, v0, v3

    new-instance v1, Lccsankotlin/annotation/AnnotationTarget;

    const-string v2, "FILE"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lccsankotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsankotlin/annotation/AnnotationTarget;->FILE:Lccsankotlin/annotation/AnnotationTarget;

    aput-object v1, v0, v3

    new-instance v1, Lccsankotlin/annotation/AnnotationTarget;

    const-string v2, "TYPEALIAS"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3}, Lccsankotlin/annotation/AnnotationTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsankotlin/annotation/AnnotationTarget;->TYPEALIAS:Lccsankotlin/annotation/AnnotationTarget;

    aput-object v1, v0, v3

    sput-object v0, Lccsankotlin/annotation/AnnotationTarget;->$VALUES:[Lccsankotlin/annotation/AnnotationTarget;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsankotlin/annotation/AnnotationTarget;
    .locals 1

    const-class v0, Lccsankotlin/annotation/AnnotationTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsankotlin/annotation/AnnotationTarget;

    return-object p0
.end method

.method public static values()[Lccsankotlin/annotation/AnnotationTarget;
    .locals 1

    sget-object v0, Lccsankotlin/annotation/AnnotationTarget;->$VALUES:[Lccsankotlin/annotation/AnnotationTarget;

    invoke-virtual {v0}, [Lccsankotlin/annotation/AnnotationTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsankotlin/annotation/AnnotationTarget;

    return-object v0
.end method
