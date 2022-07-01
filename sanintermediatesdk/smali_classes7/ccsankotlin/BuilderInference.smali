.class public interface abstract annotation Lccsankotlin/BuilderInference;
.super Ljava/lang/Object;
.source "Inference.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\u0008\u0087\u0002\u0018\u00002\u00020\u0001B\u0000\u00a8\u0006\u0002"
    }
    d2 = {
        "Lccsankotlin/BuilderInference;",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation

.annotation runtime Lccsankotlin/annotation/Retention;
    value = .enum Lccsankotlin/annotation/AnnotationRetention;->BINARY:Lccsankotlin/annotation/AnnotationRetention;
.end annotation

.annotation runtime Lccsankotlin/annotation/Target;
    allowedTargets = {
        .enum Lccsankotlin/annotation/AnnotationTarget;->VALUE_PARAMETER:Lccsankotlin/annotation/AnnotationTarget;,
        .enum Lccsankotlin/annotation/AnnotationTarget;->FUNCTION:Lccsankotlin/annotation/AnnotationTarget;,
        .enum Lccsankotlin/annotation/AnnotationTarget;->PROPERTY:Lccsankotlin/annotation/AnnotationTarget;
    }
.end annotation
