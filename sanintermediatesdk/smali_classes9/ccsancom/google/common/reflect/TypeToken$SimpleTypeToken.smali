.class final Lccsancom/google/common/reflect/TypeToken$SimpleTypeToken;
.super Lccsancom/google/common/reflect/TypeToken;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SimpleTypeToken"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/reflect/TypeToken<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .line 1289
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$SimpleTypeToken;, "Lccsancom/google/common/reflect/TypeToken$SimpleTypeToken<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/common/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;Lccsancom/google/common/reflect/TypeToken$1;)V

    .line 1290
    return-void
.end method
