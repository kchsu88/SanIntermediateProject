.class public Lccsankotlin/jvm/internal/PropertyReference0Impl;
.super Lccsankotlin/jvm/internal/PropertyReference0;
.source "PropertyReference0Impl.java"


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "owner"    # Ljava/lang/Class;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "flags"    # I

    .line 24
    sget-object v1, Lccsankotlin/jvm/internal/PropertyReference0Impl;->NO_RECEIVER:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lccsankotlin/jvm/internal/PropertyReference0;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "owner"    # Ljava/lang/Class;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "flags"    # I

    .line 29
    invoke-direct/range {p0 .. p5}, Lccsankotlin/jvm/internal/PropertyReference0;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lccsankotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "owner"    # Lccsankotlin/reflect/KDeclarationContainer;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .line 15
    sget-object v1, Lccsankotlin/jvm/internal/PropertyReference0Impl;->NO_RECEIVER:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lccsankotlin/jvm/internal/ClassBasedDeclarationContainer;

    invoke-interface {v0}, Lccsankotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v2

    instance-of v0, p1, Lccsankotlin/reflect/KClass;

    xor-int/lit8 v5, v0, 0x1

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lccsankotlin/jvm/internal/PropertyReference0;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 20
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    .line 34
    invoke-virtual {p0}, Lccsankotlin/jvm/internal/PropertyReference0Impl;->getGetter()Lccsankotlin/reflect/KProperty0$Getter;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lccsankotlin/reflect/KProperty0$Getter;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
