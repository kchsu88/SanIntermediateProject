.class public Lccsankotlin/jvm/internal/LocalVariableReference;
.super Lccsankotlin/jvm/internal/PropertyReference0;
.source "localVariableReferences.kt"


# annotations
.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0017\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lccsankotlin/jvm/internal/LocalVariableReference;",
        "Lccsankotlin/jvm/internal/PropertyReference0;",
        "()V",
        "get",
        "",
        "getOwner",
        "Lccsankotlin/reflect/KDeclarationContainer;",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lccsankotlin/jvm/internal/PropertyReference0;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-static {}, Lccsankotlin/jvm/internal/LocalVariableReferencesKt;->access$notSupportedError()Ljava/lang/Void;

    new-instance v0, Lccsankotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lccsankotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public getOwner()Lccsankotlin/reflect/KDeclarationContainer;
    .locals 1

    .line 18
    invoke-static {}, Lccsankotlin/jvm/internal/LocalVariableReferencesKt;->access$notSupportedError()Ljava/lang/Void;

    new-instance v0, Lccsankotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lccsankotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method
