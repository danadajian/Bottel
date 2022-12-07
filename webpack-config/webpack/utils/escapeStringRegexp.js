"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.escapeStringRegexp = void 0;
function escapeStringRegexp(string) {
    if (typeof string !== 'string') {
        throw new TypeError('Expected a string');
    }
    // Escape characters with special meaning either inside or outside character sets.
    // Use a simple backslash escape when it’s always valid, and a `\xnn` escape when the simpler form would be disallowed by Unicode patterns’ stricter grammar.
    return string.replace(/[|\\{}()[\]^$+*?.]/g, '\\$&').replace(/-/g, '\\x2d');
}
exports.escapeStringRegexp = escapeStringRegexp;
//# sourceMappingURL=escapeStringRegexp.js.map