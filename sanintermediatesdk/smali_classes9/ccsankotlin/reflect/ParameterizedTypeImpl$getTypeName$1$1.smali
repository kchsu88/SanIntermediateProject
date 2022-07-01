.class final synthetic Lccsankotlin/reflect/ParameterizedTypeImpl$getTypeName$1$1;
.super Lccsankotlin/jvm/internal/FunctionReferenceImpl;
.source "TypesJVM.kt"

# interfaces
.implements Lccsankotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsankotlin/reflect/ParameterizedTypeImpl;->getTypeName()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsankotlin/jvm/internal/FunctionReferenceImpl;",
        "Lccsankotlin/jvm/functions/Function1<",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "p1",
        "Ljava/lang/reflect/Type;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lccsankotlin/reflect/ParameterizedTypeImpl$getTypeName$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lccsankotlin/reflect/ParameterizedTypeImpl$getTypeName$1$1;

    invoke-direct {v0}, Lccsankotlin/reflect/ParameterizedTypeImpl$getTypeName$1$1;-><init>()V

    sput-object v0, Lccsankotlin/reflect/ParameterizedTypeImpl$getTypeName$1$1;->INSTANCE:Lccsankotlin/reflect/ParameterizedTypeImpl$getTypeName$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const-class v2, Lccsankotlin/reflect/TypesJVMKt;

    const/4 v1, 0x1

    const-string v3, "typeToString"

    const-string v4, "typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lccsankotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 184
    check-cast p1, Ljava/lang/reflect/Type;

    invoke-virtual {p0, p1}, Lccsankotlin/reflect/ParameterizedTypeImpl$getTypeName$1$1;->invoke(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1
    .param p1, "p1"    # Ljava/lang/reflect/Type;

    const-string v0, "p1"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-static {p1}, Lccsankotlin/reflect/TypesJVMKt;->access$typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
