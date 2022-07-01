.class public Lccsankotlin/jvm/internal/FunctionReferenceImpl;
.super Lccsankotlin/jvm/internal/FunctionReference;
.source "FunctionReferenceImpl.java"


# direct methods
.method public constructor <init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "arity"    # I
    .param p2, "owner"    # Ljava/lang/Class;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "flags"    # I

    .line 24
    sget-object v2, Lccsankotlin/jvm/internal/FunctionReferenceImpl;->NO_RECEIVER:Ljava/lang/Object;

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lccsankotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "arity"    # I
    .param p2, "receiver"    # Ljava/lang/Object;
    .param p3, "owner"    # Ljava/lang/Class;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "signature"    # Ljava/lang/String;
    .param p6, "flags"    # I

    .line 29
    invoke-direct/range {p0 .. p6}, Lccsankotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(ILccsankotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "arity"    # I
    .param p2, "owner"    # Lccsankotlin/reflect/KDeclarationContainer;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;

    .line 15
    sget-object v2, Lccsankotlin/jvm/internal/FunctionReferenceImpl;->NO_RECEIVER:Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lccsankotlin/jvm/internal/ClassBasedDeclarationContainer;

    invoke-interface {v0}, Lccsankotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v3

    instance-of v0, p2, Lccsankotlin/reflect/KClass;

    xor-int/lit8 v6, v0, 0x1

    move-object v0, p0

    move v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lccsankotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 20
    return-void
.end method
